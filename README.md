# Samsung Internet Browser Beta - Custom Mods

<div align="center">

![Version](https://img.shields.io/badge/version-29.0.0.59-blue)
![Android](https://img.shields.io/badge/android-10%2B-green)
![Status](https://img.shields.io/badge/status-active-success)
![License](https://img.shields.io/badge/license-educational-orange)

*Enhanced Samsung Internet Browser with unlocked features and increased limits*

</div>

---

## 📋 Overview

This repository contains modifications to the Samsung Internet Browser Beta APK that enhance functionality, remove artificial limitations, and unlock hidden features. All modifications are made at the Smali bytecode level and are intended for educational purposes.

## ✨ Features

### 🔓 **Unlocked Debug Menus** (Already Applied)
- Full access to hidden developer settings
- Debug configuration panels
- Feature testing interfaces
- Internal diagnostic tools

### 📑 **Increased Tab Limits** (NEW!)
- **Regular tabs**: 99 → **500 tabs**
- **Locked tabs**: 19 → **100 tabs**
- Perfect for power users and researchers

### 🛠️ **Additional Enhancements**
- Enhanced browsing capabilities
- Improved multitasking
- Better resource management
- Advanced configuration options

## 📦 What's Included

```
.
├── MODS.md                      # Detailed mod documentation
├── MODIFICATION_GUIDE.md        # Step-by-step modification guide
├── UNLOCK_DEBUG_MENUS.md        # Debug menu unlock details
├── apply-mods.sh                # Automated mod application script
├── smali_classes2/              # Modified Smali bytecode
│   ├── com/sec/android/app/sbrowser/
│   │   ├── common/device/BuildConfigUtil.smali          # Debug mode
│   │   └── multi_instance/MultiInstanceTabCountManager.smali  # Tab limits
└── smali_classes3/
    └── com/sec/android/app/sbrowser/settings/
        ├── SettingsFragmentUtil.smali                    # Settings access
        └── utils/SettingsUtils.smali                     # Build checks
```

## 🚀 Quick Start

### Prerequisites
- **apktool** (latest version)
- **Java JDK** 8 or higher
- **Android SDK** (optional, for ADB installation)
- **Signing tools** (jarsigner or apksigner)

### Installation Methods

#### Method 1: Using the Automation Script (Recommended)
```bash
# Make script executable
chmod +x apply-mods.sh

# Run the script
./apply-mods.sh

# Follow the menu options:
# 1. Verify modifications
# 2. Build APK
# 3. Sign APK
# 4. Install APK (if device connected)
```

#### Method 2: Manual Build
```bash
# 1. Build the APK
apktool b com_sec_android_app_sbrowser_beta -o samsung-browser-modded.apk

# 2. Generate keystore (first time only)
keytool -genkey -v -keystore my-release-key.jks \
    -keyalg RSA -keysize 2048 -validity 10000 \
    -alias sbrowser-key

# 3. Sign the APK
jarsigner -verbose -sigalg SHA256withRSA -digestalg SHA-256 \
    -keystore my-release-key.jks \
    samsung-browser-modded.apk sbrowser-key

# 4. Install
adb install -r samsung-browser-modded.apk
```

## 📚 Documentation

| Document | Description |
|----------|-------------|
| [MODS.md](MODS.md) | Complete list of all modifications with technical details |
| [MODIFICATION_GUIDE.md](MODIFICATION_GUIDE.md) | Tutorial on creating your own mods with examples |
| [UNLOCK_DEBUG_MENUS.md](UNLOCK_DEBUG_MENUS.md) | Debug menu unlock documentation |

## 🎯 Modifications Applied

### 1. Debug Mode Unlock
**File**: `smali_classes2/com/sec/android/app/sbrowser/common/device/BuildConfigUtil.smali`

```diff
  .method public final isDebug()Z
      .locals 0
  
-     const/4 p0, 0x0    # Return false
+     const/4 p0, 0x1    # Return true
  
      return p0
  .end method
```

### 2. Tab Limit Increase
**File**: `smali_classes2/com/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager.smali`

```diff
- const/16 v1, 0x63    # 99 tabs
+ const/16 v1, 0x1f4   # 500 tabs

- const/16 p0, 0x13    # 19 locked tabs
+ const/16 p0, 0x64    # 100 locked tabs
```

### 3. Debug Settings Access
**File**: `smali_classes3/com/sec/android/app/sbrowser/settings/SettingsFragmentUtil.smali`

```diff
  .method public shouldDisableDebugSettings(Ljava/lang/String;)Z
      .locals 0
  
-     # Complex check logic
-     # ...
+     const/4 p0, 0x0    # Always return false (enabled)
  
      return p0
  .end method
```

### 4. Release Build Filter
**File**: `smali_classes3/com/sec/android/app/sbrowser/settings/utils/SettingsUtils.smali`

```diff
  .method public static isOfficialReleaseShipBuild()Z
      .locals 1
  
-     const/4 v0, 0x1    # Return true
+     const/4 v0, 0x0    # Return false
  
      return v0
  .end method
```

## 🔍 Accessing Unlocked Features

### Debug Settings Menu
1. Open Samsung Internet Browser
2. Tap **Menu** (three lines)
3. Go to **Settings**
4. Scroll to bottom
5. Tap **Debug Settings** ✨

### Available Debug Options
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
- And many more...

## 🔧 Advanced Usage

### Creating Custom Mods
See [MODIFICATION_GUIDE.md](MODIFICATION_GUIDE.md) for detailed tutorials on:
- Understanding Smali bytecode
- Common modification patterns
- Step-by-step examples
- Testing and debugging

### Hex Conversion Quick Reference
```
Decimal → Hexadecimal
10      → 0xa
50      → 0x32
99      → 0x63    (default tab limit)
100     → 0x64
500     → 0x1f4   (increased tab limit)
1000    → 0x3e8
```

## ⚠️ Important Notes

### Compatibility
- **Android Version**: 10 (API 29) or higher
- **Architecture**: ARM64/ARM/x86_64/x86
- **Target SDK**: 36

### Limitations
- Cannot receive official updates from Samsung
- Some Samsung Pay features may not work
- Banking apps may detect modifications
- SafetyNet may fail

### Security Considerations
- ⚠️ Modified APK requires new signature (different from original)
- ⚠️ Use at your own risk for sensitive operations
- ⚠️ Always backup your bookmarks and data
- ⚠️ Not affiliated with Samsung Electronics

## 🧪 Testing

### Verify Modifications
```bash
# Run verification script
./apply-mods.sh
# Choose option 1: Verify modifications

# Manual verification
grep "const/4 p0, 0x1" smali_classes2/com/sec/android/app/sbrowser/common/device/BuildConfigUtil.smali
grep "const/16 v1, 0x1f4" smali_classes2/com/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager.smali
```

### Test Features
1. ✅ Open multiple tabs (test increased limit)
2. ✅ Access Debug Settings menu
3. ✅ Lock multiple tabs (test locked tab limit)
4. ✅ Verify all settings are visible
5. ✅ Test basic browsing functionality

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Areas for Contribution
- [ ] Additional browser modifications
- [ ] Enhanced download manager
- [ ] Custom user agent presets
- [ ] Privacy enhancements
- [ ] UI customizations
- [ ] Performance optimizations

### How to Contribute
1. Fork the repository
2. Create your mod branch (`git checkout -b feature/AmazingMod`)
3. Commit your changes (`git commit -m 'Add amazing mod'`)
4. Push to the branch (`git push origin feature/AmazingMod`)
5. Open a Pull Request

## 📊 Statistics

| Metric | Before | After |
|--------|--------|-------|
| Maximum Tabs | 99 | 500 |
| Locked Tabs | 19 | 100 |
| Debug Features | Hidden | Unlocked |
| Developer Options | Restricted | Full Access |

## 🗺️ Roadmap

### Planned Features
- [ ] Video downloader enhancement
- [ ] Ad blocker improvements
- [ ] Custom CSS injection
- [ ] Enhanced privacy mode
- [ ] Gesture customization
- [ ] Extended extension support
- [ ] Download manager enhancements
- [ ] Performance optimizations

### Community Requested
- Custom themes
- Per-site user agent
- Advanced cookie controls
- Backup/restore improvements

## 📜 Changelog

### Version 2.0 (Current)
- ✅ Increased tab limits (500 tabs, 100 locked)
- ✅ Comprehensive documentation
- ✅ Automated build script
- ✅ Modification guide added

### Version 1.0
- ✅ Debug menu unlock
- ✅ Debug settings accessible
- ✅ Release build filter disabled

## 🔗 Resources

### Official
- [Samsung Internet Official Site](https://www.samsung.com/sec/apps/samsung-internet/)
- [Samsung Internet Beta on Play Store](https://play.google.com/store/apps/details?id=com.sec.android.app.sbrowser.beta)

### Tools
- [Apktool](https://ibotpeaches.github.io/Apktool/) - APK decompilation tool
- [Android SDK Platform Tools](https://developer.android.com/studio/releases/platform-tools) - ADB and fastboot

### Learning
- [Smali Documentation](https://github.com/JesusFreke/smali/wiki)
- [Android Bytecode Reference](https://source.android.com/docs/core/runtime/dalvik-bytecode)

## 📞 Support

### Getting Help
- 📖 Check the documentation files
- 🐛 Report issues on GitHub
- 💬 Join community discussions
- 📧 Contact maintainers

### Troubleshooting
See individual documentation files for specific issues:
- Build errors → [MODIFICATION_GUIDE.md](MODIFICATION_GUIDE.md)
- Feature not working → [MODS.md](MODS.md)
- Installation problems → [apply-mods.sh](apply-mods.sh)

## ⚖️ Legal Disclaimer

```
This project is for EDUCATIONAL PURPOSES ONLY.

- All modifications are reverse-engineered from publicly available APK files
- Samsung Internet Browser is property of Samsung Electronics Co., Ltd.
- This project is NOT affiliated with Samsung Electronics
- Use modified versions at your own risk
- No warranty or guarantee provided
- Users are responsible for compliance with local laws and terms of service
```

## 👥 Credits

**Original Application**  
Samsung Electronics Co., Ltd.

**Package Information**  
- Package: `com.sec.android.app.sbrowser.beta`
- Version: 29.0.0.59
- Version Code: 1290059522

**Modifications**  
Community contributors (educational purposes)

**Tools Used**  
- apktool by iBotPeaches
- Android SDK by Google
- Various reverse engineering tools

---

<div align="center">

**Made with ❤️ for the Android modding community**

⭐ **Star this repo if you find it useful!** ⭐

[Report Bug](../../issues) · [Request Feature](../../issues) · [Contribute](../../pulls)

</div>
