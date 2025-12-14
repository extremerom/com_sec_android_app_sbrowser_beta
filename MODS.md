# Samsung Internet Browser - Advanced Mods Collection

## Overview
This document describes all custom modifications applied to the Samsung Internet Browser Beta to enhance functionality, remove limitations, and enable advanced features.

## Modifications Implemented

### 1. Debug Menu Unlock (Already Applied)
**Purpose**: Enable access to all hidden developer and debug features

**Files Modified**:
- `smali_classes2/com/sec/android/app/sbrowser/common/device/BuildConfigUtil.smali`
  - Method: `isDebug()` - Returns `true` (0x1)
  - Effect: Activates debug mode globally

- `smali_classes3/com/sec/android/app/sbrowser/settings/SettingsFragmentUtil.smali`
  - Method: `shouldDisableDebugSettings()` - Returns `false` (0x0)
  - Effect: Debug settings always accessible

- `smali_classes3/com/sec/android/app/sbrowser/settings/utils/SettingsUtils.smali`
  - Method: `isOfficialReleaseShipBuild()` - Returns `false` (0x0)
  - Effect: Prevents hiding debug features in release builds

**Features Unlocked**:
- Debug Settings menu in Settings
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
- All preferences with `securityLevel="0"`

### 2. Increased Tab Limits
**Purpose**: Allow more open tabs for power users

**File**: `smali_classes2/com/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager.smali`

**Changes**:
- Maximum tab count: 99 → 500
- Maximum locked tabs: 19 → 100

**Line Changes**:
- Line 42: Change `0x63` (99) to `0x1f4` (500)
- Line 61: Change `0x13` (19) to `0x64` (100)

**Benefits**:
- Open up to 500 tabs simultaneously
- Lock up to 100 tabs to prevent accidental closure
- Useful for research, multitasking, and power users

### 3. Enhanced Secret Mode
**Purpose**: Remove restrictions from Secret/Incognito mode

**File**: `smali_classes2/com/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate.smali`

**Modifications** (To be applied):
- Disable Secret Mode password requirement
- Enable screenshots in Secret Mode
- Allow downloads without restrictions
- Enable all extensions in Secret Mode

### 4. Advanced Anti-Tracking
**Purpose**: Enhanced privacy features

**File**: `smali_classes2/com/sec/android/app/sbrowser/anti_tracking/AntiTrackingUtils.smali`

**Planned Modifications**:
- Enable maximum anti-tracking protection by default
- Block all third-party cookies
- Enhanced fingerprint protection

### 5. User Agent Customization
**Purpose**: Full control over browser identification

**File**: `smali_classes2/com/sec/android/app/sbrowser/common/utils/UserAgentUtils.smali`

**Planned Features**:
- Custom user agent strings
- Per-site user agent override
- Desktop mode improvements

### 6. Download Manager Enhancement
**Purpose**: Remove download restrictions and improve functionality

**File**: `smali_classes2/com/sec/android/app/sbrowser/download/DownloadManagerService.smali`

**Planned Modifications**:
- Remove file size limits
- Enable parallel downloads
- Custom download location per file type
- No download restrictions in any mode

## Technical Implementation Details

### Smali Bytecode Basics
- `.method public` - Public method declaration
- `const/4 v0, 0x1` - Load constant 1 into register v0
- `return v0` - Return value in register v0
- `0x0` = false (0)
- `0x1` = true (1)

### Common Patterns

**Disable a check (return false)**:
```smali
.method public someCheck()Z
    .locals 0
    
    const/4 p0, 0x0  # Load 0 (false)
    
    return p0
.end method
```

**Enable a feature (return true)**:
```smali
.method public someFeature()Z
    .locals 0
    
    const/4 p0, 0x1  # Load 1 (true)
    
    return p0
.end method
```

**Change numeric constants**:
```smali
const/16 v1, 0x63    # 99 in decimal
# Change to:
const/16 v1, 0x1f4   # 500 in decimal
```

## Building the Modified APK

### Prerequisites
- apktool (latest version)
- Java JDK 8 or higher
- APK signing tools (jarsigner or apksigner)

### Compile Command
```bash
apktool b com_sec_android_app_sbrowser_beta -o samsung-browser-modded.apk
```

### Sign the APK
```bash
# Generate keystore (one time only)
keytool -genkey -v -keystore my-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-key-alias

# Sign the APK
jarsigner -verbose -sigalg SHA256withRSA -digestalg SHA-256 -keystore my-release-key.jks samsung-browser-modded.apk my-key-alias

# Or use apksigner (Android SDK)
apksigner sign --ks my-release-key.jks --out samsung-browser-signed.apk samsung-browser-modded.apk
```

### Install
```bash
adb install -r samsung-browser-signed.apk
```

## Security Considerations

⚠️ **Important Warnings**:
1. Modified APKs cannot receive official updates
2. Some Samsung-specific features may require system signature
3. Banking apps may detect modified browser through SafetyNet
4. Use at your own risk for sensitive activities
5. Always backup your bookmarks and data before installing

## Advanced Features Enabled

### Debug Features
- Full access to internal debugging tools
- Developer configuration panels
- Feature flags and experimental options
- Diagnostic information displays

### Performance Optimizations
- Increased resource limits
- Enhanced multitasking capabilities
- Improved tab management

### Privacy Enhancements
- Advanced tracking protection
- Enhanced secret mode
- Cookie and storage controls

## Future Modifications (Planned)

1. **Ad Blocker Enhancement**
   - Custom filter lists
   - Enhanced blocking rules
   - Cosmetic filtering

2. **Extension Support**
   - Enable more extension APIs
   - Remove extension restrictions
   - Custom extension loading

3. **Video Download**
   - Automatic video detection
   - Multiple quality options
   - Background downloading

4. **Theme Customization**
   - Custom CSS injection
   - Dark mode improvements
   - UI element customization

5. **Gesture Controls**
   - Custom gesture actions
   - Enhanced navigation
   - Quick access features

## Testing Recommendations

After applying mods:
1. Test basic browsing functionality
2. Verify tab opening/closing works correctly
3. Check Secret Mode functionality
4. Test download manager
5. Verify settings persistence
6. Check for crashes or instability

## Troubleshooting

### Browser crashes on startup
- Clear app data and cache
- Reinstall the base APK
- Check Android version compatibility

### Features not working
- Verify modifications were applied correctly
- Check smali syntax for errors
- Ensure proper recompilation

### Installation failed
- Remove previous version first
- Check APK signature
- Verify Android version support

## Changelog

**Version 1.0** (Initial Release)
- Debug menu unlock
- Increased tab limits (500 tabs, 100 locked)
- Documentation created

**Version 2.0** (Planned)
- Enhanced Secret Mode
- Advanced Anti-Tracking
- Download Manager improvements
- User Agent customization

## Credits

**Original App**: Samsung Electronics Co., Ltd.
**Package**: com.sec.android.app.sbrowser.beta
**Version**: 29.0.0.59
**Modifications**: Educational and personal use purposes

## License & Disclaimer

This project is for educational purposes only. All modifications are reverse-engineered from publicly available APK files. Samsung Internet Browser is property of Samsung Electronics Co., Ltd. Use modified versions at your own risk.

**Disclaimer**: 
- Not affiliated with Samsung Electronics
- No warranty or guarantee provided
- Use responsibly and legally
- Respect all applicable laws and terms of service

## Support & Contributions

This is an open-source educational project. Feel free to:
- Report issues
- Suggest new modifications
- Share your improvements
- Document additional features

---

**Last Updated**: 2024-12-14
**Maintainer**: Community Contributors
**Status**: Active Development
