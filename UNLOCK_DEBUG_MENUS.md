# Samsung Internet Browser - Debug Menus Unlocked

## Overview
This modification unlocks all hidden debug menus, developer options, and experimental features in the Samsung Internet Browser Beta.

## Changes Made

### 1. Enable Debug Mode
**File**: `smali_classes2/com/sec/android/app/sbrowser/common/device/BuildConfigUtil.smali`
- **Method**: `isDebug()`
- **Change**: Return value changed from `0x0` (false) to `0x1` (true)
- **Effect**: Enables debug mode throughout the entire application

### 2. Bypass Debug Settings URL Check
**File**: `smali_classes3/com/sec/android/app/sbrowser/settings/SettingsFragmentUtil.smali`
- **Method**: `shouldDisableDebugSettings(Ljava/lang/String;)Z`
- **Change**: Simplified to always return `0x0` (false)
- **Effect**: Debug settings are always visible without requiring `internet://debug/` URL

### 3. Disable Release Build Filtering
**File**: `smali_classes3/com/sec/android/app/sbrowser/settings/utils/SettingsUtils.smali`
- **Method**: `isOfficialReleaseShipBuild()`
- **Change**: Return value changed from `0x1` (true) to `0x0` (false)
- **Effect**: Prevents hiding of debug preferences based on security levels

## Unlocked Features

### Main Debug Settings Menu
Now accessible directly from Settings without special URL:
- Debug Settings
  - Internet Information
  - Feature Variation Test
  - User Agent Debug
  - Global Config Debug
  - SA Logging Debug
  - Single Module Tests
  - QuickAccess Debug
  - MainView Debug
  - Managed Config Debug
  - TSS Configurations

### Hidden Preferences
All preferences with `securityLevel="0"` are now visible:
- Various experimental features
- Testing and debugging tools
- Developer configuration options
- Internal diagnostic screens

## How to Access

1. **Via Settings Menu**:
   - Open Samsung Internet Browser
   - Go to Settings
   - Scroll to bottom
   - Tap "Debug Settings"

2. **No URL Required**:
   - Previously required navigating to `internet://debug/`
   - Now accessible directly from Settings

## Technical Details

### Security Mechanisms Disabled

1. **Debug Mode Check**: The app checks `BuildConfigUtil.isDebug()` to determine if debug features should be enabled
2. **URL Validation**: Settings checked if accessed via `internet://debug/` URL
3. **Build Type Filtering**: Release builds hide certain preferences with `securityLevel="0"`

All three mechanisms have been disabled to permanently enable all debug features.

### XML Attribute: securityLevel

Debug preferences in XML files use a `securityLevel` attribute:
- `securityLevel="0"`: Hidden in release builds (now visible)
- `securityLevel="1"`: Always visible

## Recompiling

After making these changes, recompile the APK using:
```bash
apktool b com_sec_android_app_sbrowser_beta -o samsung-browser-debug.apk
```

Then sign the APK before installation.

## Warning

⚠️ **Important Notes**:
- These changes are for educational and development purposes
- Enabling debug features may expose sensitive information
- Some debug options may affect browser stability
- Use at your own risk

## Additional Debug Options

Many debug fragments discovered:
- Anti-Tracking Debug
- Autofill Debug
- Biometrics Debug
- Bitmap Manager Debug
- Boarding Pass Debug
- Custom Tabs Debug
- Help Me Write Debug
- Read Aloud Debug
- AI Summarize Debug
- And many more...

All are now accessible through the Debug Settings menu.

---

**Created for**: Samsung Internet Browser Beta (com.sec.android.app.sbrowser.beta)
**Modification Type**: Smali bytecode editing
**Purpose**: Unlock hidden developer and debug menus
