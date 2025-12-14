# Samsung Internet Browser - Modification Examples

This document provides step-by-step examples for creating custom modifications to Samsung Internet Browser.

## Table of Contents
1. [Understanding Smali Basics](#understanding-smali-basics)
2. [Common Modification Patterns](#common-modification-patterns)
3. [Example Modifications](#example-modifications)
4. [Testing Your Mods](#testing-your-mods)

## Understanding Smali Basics

### What is Smali?
Smali is the human-readable format of Dalvik bytecode (Android's compiled code). When you decompile an APK with apktool, Java bytecode is converted to Smali.

### Basic Syntax

```smali
# Comment (starts with #)

.class public Lcom/example/MyClass;    # Class declaration
.super Ljava/lang/Object;               # Parent class
.source "MyClass.java"                  # Source file

.method public myMethod()V              # Method declaration
    .locals 1                           # Number of local variables
    
    const/4 v0, 0x1                     # Load constant 1 into register v0
    return v0                           # Return value in v0
.end method
```

### Register Types
- `v0`, `v1`, `v2`, ... - Local registers
- `p0`, `p1`, `p2`, ... - Parameter registers
  - `p0` in non-static methods = `this`
  - `p1`, `p2`, ... = method parameters

### Common Instructions
```smali
const/4 v0, 0x1           # Load small constant (0x1 = 1)
const/16 v0, 0x3e8        # Load larger constant (0x3e8 = 1000)
return v0                  # Return value
return-void               # Return nothing
if-eq v0, v1, :label      # If v0 == v1, jump to :label
goto :label               # Unconditional jump
invoke-virtual {p0}, ...  # Call instance method
invoke-static {}, ...     # Call static method
```

### Data Types
```smali
Z = boolean
B = byte
S = short
C = char
I = int
J = long
F = float
D = double
L = object (e.g., Ljava/lang/String;)
V = void
```

## Common Modification Patterns

### 1. Always Return True
```smali
.method public isFeatureEnabled()Z
    .locals 0
    
    const/4 p0, 0x1    # Load 1 (true)
    return p0
.end method
```

### 2. Always Return False
```smali
.method public isRestricted()Z
    .locals 0
    
    const/4 p0, 0x0    # Load 0 (false)
    return p0
.end method
```

### 3. Change Numeric Constant
```smali
# Original (limit = 100)
const/16 v0, 0x64

# Modified (limit = 1000)
const/16 v0, 0x3e8
```

### 4. Disable a Check
```smali
# Original
.method public checkSomething()Z
    .locals 2
    
    # Complex logic here
    if-eq v0, v1, :failed
    const/4 v0, 0x1
    return v0
    
    :failed
    const/4 v0, 0x0
    return v0
.end method

# Modified (always pass)
.method public checkSomething()Z
    .locals 0
    
    const/4 v0, 0x1
    return v0
.end method
```

### 5. Skip Method Execution
```smali
# Original
.method public restrictiveMethod()V
    .locals 1
    
    # Method body that does something
    invoke-virtual {p0}, ...
    # More code
.end method

# Modified (do nothing)
.method public restrictiveMethod()V
    .locals 0
    
    return-void    # Exit immediately
.end method
```

## Example Modifications

### Example 1: Increase Download Parallel Limit

**File**: `smali_classes2/com/sec/android/app/sbrowser/download/DownloadManager.smali`

**Find**:
```smali
const/4 v0, 0x3    # Max parallel downloads = 3
```

**Replace with**:
```smali
const/4 v0, 0xa    # Max parallel downloads = 10
```

### Example 2: Remove Screenshot Restriction

**File**: `smali_classes2/com/sec/android/app/sbrowser/main_view/MainViewWindow.smali`

**Find**:
```smali
.method public setSecureFlag(Z)V
    .locals 2
    
    if-eqz p1, :clear_flag
    
    invoke-virtual {p0}, ...
    const/16 v0, 0x2000    # FLAG_SECURE
    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V
    return-void
    
    :clear_flag
    const/16 v0, 0x2000
    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V
    return-void
.end method
```

**Replace with**:
```smali
.method public setSecureFlag(Z)V
    .locals 0
    
    return-void    # Do nothing - never set secure flag
.end method
```

### Example 3: Enable Hidden Feature

**File**: `smali_classes2/com/sec/android/app/sbrowser/feature/FeatureManager.smali`

**Find**:
```smali
.method public isExperimentalFeatureEnabled()Z
    .locals 2
    
    invoke-static {}, Lcom/sec/android/app/sbrowser/BuildConfig;->isDebug()Z
    move-result v0
    return v0
.end method
```

**Replace with**:
```smali
.method public isExperimentalFeatureEnabled()Z
    .locals 0
    
    const/4 v0, 0x1    # Always enabled
    return v0
.end method
```

### Example 4: Bypass Premium Check

**Find**:
```smali
.method public isPremiumUser()Z
    .locals 2
    
    invoke-virtual {p0}, Lcom/example/SubscriptionManager;->checkSubscription()Z
    move-result v0
    return v0
.end method
```

**Replace with**:
```smali
.method public isPremiumUser()Z
    .locals 0
    
    const/4 v0, 0x1    # Always premium
    return v0
.end method
```

### Example 5: Change String Constant

**Find**:
```smali
const-string v0, "http://example.com/api"
```

**Replace with**:
```smali
const-string v0, "http://custom-api.com"
```

### Example 6: Modify Timeout Value

**Find**:
```smali
const/16 v0, 0x1388    # 5000ms (5 seconds)
```

**Replace with**:
```smali
const/16 v0, 0x7530    # 30000ms (30 seconds)
```

### Example 7: Remove Time-based Restriction

**Find**:
```smali
.method public canUseFeature()Z
    .locals 4
    
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    
    # Complex time check logic
    const-wide/32 v2, 0x5265c00    # Some time limit
    cmp-long v0, v0, v2
    if-lez v0, :expired
    
    const/4 v0, 0x1
    return v0
    
    :expired
    const/4 v0, 0x0
    return v0
.end method
```

**Replace with**:
```smali
.method public canUseFeature()Z
    .locals 0
    
    const/4 v0, 0x1    # Always available
    return v0
.end method
```

## Advanced Modifications

### Modifying Method Calls

**Original**:
```smali
invoke-virtual {p0}, Lcom/example/Class;->restrictiveMethod()V
```

**Remove the call** (comment it out):
```smali
# invoke-virtual {p0}, Lcom/example/Class;->restrictiveMethod()V
```

### Changing Conditionals

**Original**:
```smali
if-eq v0, v1, :label    # If v0 == v1, goto label
```

**Always jump**:
```smali
goto :label             # Always goto label
```

**Never jump**:
```smali
# if-eq v0, v1, :label  # Comment out - never jump
```

### Patching Arrays

**Original**:
```smali
.array-data 4
    0x1
    0x2
    0x3
.end array-data
```

**Modified**:
```smali
.array-data 4
    0xa
    0x14
    0x1e
.end array-data
```

## Hexadecimal Conversion Table

| Decimal | Hexadecimal | Common Use |
|---------|-------------|------------|
| 0       | 0x0         | false      |
| 1       | 0x1         | true       |
| 10      | 0xa         | Small limit|
| 50      | 0x32        | Medium limit|
| 99      | 0x63        | Default tab limit|
| 100     | 0x64        | Round number|
| 500     | 0x1f4       | Increased tab limit|
| 1000    | 0x3e8       | Large limit|
| 5000    | 0x1388      | 5 seconds in ms|
| 8192    | 0x2000      | FLAG_SECURE|
| 10000   | 0x2710      | 10 seconds in ms|
| 30000   | 0x7530      | 30 seconds in ms|
| 60000   | 0xea60      | 1 minute in ms|

## Testing Your Mods

### 1. Syntax Validation
After editing, rebuild with apktool:
```bash
apktool b <directory> -o test.apk
```

If there are syntax errors, apktool will report them.

### 2. Functional Testing
1. Install the modded APK
2. Test the specific feature you modified
3. Check logcat for errors:
   ```bash
   adb logcat | grep sbrowser
   ```

### 3. Reverting Changes
Always keep a backup of original smali files:
```bash
cp original.smali original.smali.backup
```

To revert:
```bash
cp original.smali.backup original.smali
```

## Best Practices

1. **Make Small Changes**: Modify one feature at a time for easier debugging
2. **Test Frequently**: Rebuild and test after each modification
3. **Keep Backups**: Always backup original files
4. **Document Changes**: Comment your modifications in the code
5. **Understand Context**: Read surrounding code to understand the method's purpose
6. **Check Dependencies**: Some methods call others - understand the flow
7. **Use Logging**: Add log statements to track execution:
   ```smali
   const-string v0, "MyTag"
   const-string v1, "My message"
   invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
   ```

## Common Pitfalls

1. **Wrong Register Count**: `.locals N` must match the number of registers used
2. **Type Mismatches**: Return type must match method signature
3. **Invalid Jumps**: Label names must be unique and exist
4. **Missing Instructions**: Complete method must have return or return-void
5. **Register Overflow**: Don't use more registers than declared

## Tools for Finding Methods

### Using grep
```bash
# Find all methods with "download" in name
grep -r "\.method.*download" smali*

# Find constant values
grep -r "const/16.*0x63" smali*

# Find specific strings
grep -r "Premium" smali*
```

### Using apktool
```bash
# Decompile with better formatting
apktool d app.apk -o output -r --only-main-classes
```

## Useful Modifications Reference

| Feature | File Pattern | Method Pattern | Change |
|---------|--------------|----------------|--------|
| Debug Mode | BuildConfig* | isDebug() | Return 0x1 |
| Tab Limits | TabManager* | getMax* | Increase const |
| Premium Check | Subscription* | isPremium() | Return 0x1 |
| Time Restrictions | *Manager | canUse*/isExpired() | Return 0x1/0x0 |
| Screenshot Block | *Window* | setSecure* | Return void |
| Download Limits | Download* | getMax*/canDownload() | Increase/Return 0x1 |
| Feature Flags | Feature* | isEnabled() | Return 0x1 |

## Getting Help

1. Check logcat output for crash information
2. Verify smali syntax with apktool build
3. Compare with original unmodified code
4. Search for similar patterns in other files
5. Use online smali resources and documentation

---

**Remember**: Always test modifications in a safe environment and keep backups of original files!
