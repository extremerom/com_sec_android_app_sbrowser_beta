.class public Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDisableHelpIntro:Z = false


# direct methods
.method public static getDisableHelpIntro()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;->sDisableHelpIntro:Z

    return v0
.end method

.method public static isGCMApiAvailable()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isChinaNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isSafetyNetApiEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;->isGCMApiAvailable()Z

    move-result v0

    return v0
.end method

.method public static isTabLockSupported(Z)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isCtc()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static setDisableHelpIntro(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-boolean p0, Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;->sDisableHelpIntro:Z

    return-void
.end method
