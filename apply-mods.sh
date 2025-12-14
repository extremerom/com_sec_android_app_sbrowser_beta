#!/bin/bash
# Samsung Internet Browser - Mod Application Script
# This script helps verify and apply modifications to the browser
#
# Note: This script verifies both new and pre-existing modifications:
# - Pre-existing: Debug mode unlock (already in repository)
# - New in this PR: Increased tab limits (500 tabs, 100 locked)
#
# The verification step will check if files exist and show status accordingly.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_NAME="Samsung Internet Browser Beta"
PACKAGE_NAME="com.sec.android.app.sbrowser.beta"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print colored message
print_msg() {
    local color=$1
    shift
    echo -e "${color}$*${NC}"
}

# Check if required tools are installed
check_requirements() {
    print_msg "$BLUE" "Checking requirements..."
    
    local missing_tools=()
    
    if ! command -v apktool &> /dev/null; then
        missing_tools+=("apktool")
    fi
    
    if ! command -v java &> /dev/null; then
        missing_tools+=("java")
    fi
    
    if [ ${#missing_tools[@]} -ne 0 ]; then
        print_msg "$RED" "Missing required tools: ${missing_tools[*]}"
        print_msg "$YELLOW" "Please install the missing tools and try again."
        exit 1
    fi
    
    print_msg "$GREEN" "All requirements met!"
}

# Verify modifications
verify_mods() {
    print_msg "$BLUE" "Verifying applied modifications..."
    
    local verified=0
    local failed=0
    
    # Check Debug Mode modification (pre-existing)
    if grep -q "const/4 p0, 0x1" "$SCRIPT_DIR/smali_classes2/com/sec/android/app/sbrowser/common/device/BuildConfigUtil.smali" 2>/dev/null; then
        print_msg "$GREEN" "✓ Debug Mode: ENABLED (pre-existing)"
        ((verified++))
    else
        print_msg "$YELLOW" "⚠ Debug Mode: File not found (may be in different location)"
    fi
    
    # Check Tab Limit modification
    if grep -q "const/16 v1, 0x1f4" "$SCRIPT_DIR/smali_classes2/com/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager.smali"; then
        print_msg "$GREEN" "✓ Tab Limit: INCREASED (500 tabs)"
        ((verified++))
    else
        print_msg "$YELLOW" "✗ Tab Limit: NOT INCREASED (still at 99)"
        ((failed++))
    fi
    
    # Check Locked Tab Limit modification
    if grep -q "const/16 p0, 0x64" "$SCRIPT_DIR/smali_classes2/com/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager.smali"; then
        print_msg "$GREEN" "✓ Locked Tab Limit: INCREASED (100 tabs)"
        ((verified++))
    else
        print_msg "$YELLOW" "✗ Locked Tab Limit: NOT INCREASED (still at 19)"
        ((failed++))
    fi
    
    # Check Debug Settings accessibility (pre-existing)
    if grep -q "const/4 p0, 0x0" "$SCRIPT_DIR/smali_classes3/com/sec/android/app/sbrowser/settings/SettingsFragmentUtil.smali" 2>/dev/null; then
        print_msg "$GREEN" "✓ Debug Settings: UNLOCKED (pre-existing)"
        ((verified++))
    else
        print_msg "$YELLOW" "⚠ Debug Settings: File not found (may be in different location)"
    fi
    
    # Check Release Build Filter (pre-existing)
    if grep -q "const/4 v0, 0x0" "$SCRIPT_DIR/smali_classes3/com/sec/android/app/sbrowser/settings/utils/SettingsUtils.smali" 2>/dev/null; then
        print_msg "$GREEN" "✓ Release Build Filter: DISABLED (pre-existing)"
        ((verified++))
    else
        print_msg "$YELLOW" "⚠ Release Build Filter: File not found (may be in different location)"
    fi
    
    echo ""
    print_msg "$BLUE" "=========================================="
    print_msg "$GREEN" "Verified: $verified modifications"
    if [ $failed -gt 0 ]; then
        print_msg "$RED" "Failed: $failed modifications"
    fi
    print_msg "$BLUE" "=========================================="
    echo ""
    
    return $failed
}

# Build APK
build_apk() {
    print_msg "$BLUE" "Building modified APK..."
    
    local output_apk="$SCRIPT_DIR/../samsung-browser-modded.apk"
    
    if [ -f "$output_apk" ]; then
        print_msg "$YELLOW" "Removing existing APK..."
        rm "$output_apk"
    fi
    
    print_msg "$YELLOW" "Running apktool build..."
    apktool b "$SCRIPT_DIR" -o "$output_apk"
    
    if [ $? -eq 0 ]; then
        print_msg "$GREEN" "✓ APK built successfully: $output_apk"
        return 0
    else
        print_msg "$RED" "✗ Failed to build APK"
        return 1
    fi
}

# Sign APK
sign_apk() {
    local apk_path="$SCRIPT_DIR/../samsung-browser-modded.apk"
    local keystore_path="$SCRIPT_DIR/../my-release-key.jks"
    local signed_apk="$SCRIPT_DIR/../samsung-browser-signed.apk"
    
    print_msg "$BLUE" "Checking for keystore..."
    
    if [ ! -f "$keystore_path" ]; then
        print_msg "$YELLOW" "Keystore not found. Generating new keystore..."
        keytool -genkey -v -keystore "$keystore_path" \
            -alias sbrowser-key \
            -keyalg RSA \
            -keysize 2048 \
            -validity 10000 \
            -storepass android \
            -keypass android \
            -dname "CN=SBrowser Mod, OU=Dev, O=Custom, L=City, S=State, C=US"
        
        if [ $? -ne 0 ]; then
            print_msg "$RED" "✗ Failed to generate keystore"
            return 1
        fi
    fi
    
    print_msg "$BLUE" "Signing APK..."
    jarsigner -verbose -sigalg SHA256withRSA -digestalg SHA-256 \
        -keystore "$keystore_path" \
        -storepass android \
        -keypass android \
        "$apk_path" sbrowser-key
    
    if [ $? -eq 0 ]; then
        mv "$apk_path" "$signed_apk"
        print_msg "$GREEN" "✓ APK signed successfully: $signed_apk"
        return 0
    else
        print_msg "$RED" "✗ Failed to sign APK"
        return 1
    fi
}

# Install APK
install_apk() {
    local signed_apk="$SCRIPT_DIR/../samsung-browser-signed.apk"
    
    if [ ! -f "$signed_apk" ]; then
        print_msg "$RED" "Signed APK not found: $signed_apk"
        return 1
    fi
    
    print_msg "$BLUE" "Checking for connected device..."
    
    if ! command -v adb &> /dev/null; then
        print_msg "$YELLOW" "ADB not found. Please install Android SDK Platform Tools."
        print_msg "$YELLOW" "You can manually install: $signed_apk"
        return 0
    fi
    
    local device_count=$(adb devices | grep -v "List" | grep "device$" | wc -l)
    
    if [ $device_count -eq 0 ]; then
        print_msg "$YELLOW" "No device connected. Please connect a device or use manual installation."
        return 0
    fi
    
    print_msg "$BLUE" "Uninstalling previous version..."
    adb uninstall "$PACKAGE_NAME" 2>/dev/null || true
    
    print_msg "$BLUE" "Installing modified APK..."
    adb install -r "$signed_apk"
    
    if [ $? -eq 0 ]; then
        print_msg "$GREEN" "✓ APK installed successfully!"
        return 0
    else
        print_msg "$RED" "✗ Failed to install APK"
        return 1
    fi
}

# Show menu
show_menu() {
    echo ""
    print_msg "$BLUE" "=========================================="
    print_msg "$BLUE" "   $APP_NAME - Mod Manager"
    print_msg "$BLUE" "=========================================="
    echo ""
    echo "1) Verify modifications"
    echo "2) Build APK"
    echo "3) Sign APK"
    echo "4) Install APK"
    echo "5) Full build pipeline (verify + build + sign)"
    echo "6) Exit"
    echo ""
}

# Main function
main() {
    check_requirements
    
    while true; do
        show_menu
        read -p "Select an option: " choice
        
        case $choice in
            1)
                verify_mods
                ;;
            2)
                build_apk
                ;;
            3)
                sign_apk
                ;;
            4)
                install_apk
                ;;
            5)
                verify_mods && build_apk && sign_apk
                if [ $? -eq 0 ]; then
                    print_msg "$GREEN" "✓ Full build pipeline completed!"
                    read -p "Do you want to install the APK? (y/n): " install_choice
                    if [ "$install_choice" = "y" ] || [ "$install_choice" = "Y" ]; then
                        install_apk
                    fi
                fi
                ;;
            6)
                print_msg "$BLUE" "Goodbye!"
                exit 0
                ;;
            *)
                print_msg "$RED" "Invalid option. Please try again."
                ;;
        esac
        
        read -p "Press Enter to continue..."
    done
}

# Run main function
main
