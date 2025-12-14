.class Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSupportMultiWindowMode()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public canSupportNonSamsungDevice()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result p0

    return p0
.end method

.method public isCoverClosed()Z
    .locals 2

    :try_start_0
    const-string p0, "cover"

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/ICoverManager;->asInterface(Landroid/os/IBinder;)Lcom/sec/sbrowser/spl/wrapper/ICoverManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/ICoverManager;->getCoverSwitchState()Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to bind ICoverManager: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "AuthenticationDeviceStatus"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isDesktopMode()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isFingerprintDisabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintDisabled()Z

    move-result p0

    return p0
.end method

.method public isFingerprintRegistered()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result p0

    return p0
.end method

.method public isFingerprintSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintSupported()Z

    move-result p0

    return p0
.end method

.method public isIntelligentScanRegistered()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result p0

    return p0
.end method

.method public isIntelligentScanSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentScanSupported()Z

    move-result p0

    return p0
.end method

.method public isIrisDisabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisDisabled()Z

    move-result p0

    return p0
.end method

.method public isIrisRegistered()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result p0

    return p0
.end method

.method public isIrisSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisSupported()Z

    move-result p0

    return p0
.end method

.method public isStandaloneDesktopMode()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeStandalone()Z

    move-result p0

    return p0
.end method
