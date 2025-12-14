.class public Lcom/sec/android/app/sbrowser/common/utils/BioUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;
    }
.end annotation


# static fields
.field private static sChipName:Ljava/lang/String;

.field private static sFingerprintSupportedState:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

.field private static sIrisSupportedState:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_UNDETERMINED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->sFingerprintSupportedState:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->sIrisSupportedState:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    return-void
.end method

.method public static canUseBiometrics()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isLDUModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method

.method public static isBioRegistered()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isExynos9810()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->sChipName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "ro.chipname"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->sChipName:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->sChipName:Ljava/lang/String;

    const-string v1, "EXYNOS9810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isFaceRegistered()Z
    .locals 4

    const-string v0, "BioUtil"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useSherlockEnvironment()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isFaceRegisteredForSherlock()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-static {v1}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "There are enrolled faces."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v1, "SemBioFaceManager reflection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public static isFaceSupported()Z
    .locals 5

    const-string v0, "BioUtil"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isFaceDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const v1, 0xf4252

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    :try_start_0
    invoke-static {v1}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "There is no face feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    return v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Face scan is not supported in the device or Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isFingerprintDisabled()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/MajoFingerprintManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/MajoFingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/MajoFingerprintManager;->semHasDisabledFingerprints()Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "BioUtil"

    const-string v2, "MajoFingerprintManager - reflection failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static isFingerprintRegistered()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useSherlockEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isFingerprintRegisteredForSherlock()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isGoogleFingerprintRegistered()Z

    move-result v0

    return v0
.end method

.method public static isFingerprintSupported()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isFingerprintDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isGoogleFingerprintSupported()Z

    move-result v0

    return v0
.end method

.method public static isGoogleFingerprintRegistered()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isGoogleFingerprintSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isGoogleFingerprintSupported()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isIntelligentRegistered()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useSherlockEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isIntelligentScanRegisteredForSherlock()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentScanSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceRegistered()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method public static isIntelligentScanSupported()Z
    .locals 5

    const-string v0, "BioUtil"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isIntelligentScanDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const v1, 0xf4252

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.biometrics"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v1, "There is no biometrics system feature."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.samsung.android.biometrics.service"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x3

    if-ge v1, v3, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isExynos9810()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x1

    return v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Intelligent Scan Service is not supported in the device or Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isIrisDisabled()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0xf4254

    :try_start_0
    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->hasDisabledIrises()Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->hasDisabledIrises()Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "BioUtil"

    const-string v2, "SemIrisManager - hasDisabledIrises() reflection failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public static isIrisRegistered()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useSherlockEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isIrisRegisteredForSherlock()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisSupported()Z

    move-result v2

    const-string v3, "BioUtil"

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->hasEnrolledIris()Z

    move-result v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SemIrisManager - hasEnrolledIris() reflection failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string v0, "isIrisRegistered : "

    invoke-static {v0, v3, v1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public static isIrisSupported()Z
    .locals 5

    const-string v0, "BioUtil"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isIrisDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    sget-object v3, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->sIrisSupportedState:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_UNDETERMINED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    if-eq v3, v4, :cond_5

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->sIrisSupportedState:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_SUPPORTED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    if-ne v0, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    :try_start_0
    invoke-static {v1}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->isHardwareDetected()Z

    move-result v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "SemIrisManager - isHardwareDetected() reflection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "isIrisSupported : "

    invoke-static {v1, v0, v2}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_6

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_SUPPORTED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_UNSUPPORTED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    :goto_1
    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->sIrisSupportedState:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    return v2
.end method
