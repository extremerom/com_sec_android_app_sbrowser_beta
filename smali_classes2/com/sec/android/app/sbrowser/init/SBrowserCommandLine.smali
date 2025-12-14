.class public Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDisableSmoothScroll:Z = false

.field private static sIsCustomFeaturesInitialized:Z = false

.field private static sIsInitialized:Z = false


# direct methods
.method public static initialize()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;->sIsInitialized:Z

    const-string v0, "enable-top-controls-ui-composition"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;->sDisableSmoothScroll:Z

    if-eqz v0, :cond_0

    const-string v0, "fling-velocity-multiplier"

    const-string v1, "0.85"

    invoke-static {v0, v1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "disable-smooth-scroll"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ro.build.characteristics"

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "use-old-desktop-ua"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_1
    const-string v0, "enable-safe-browsing"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->getInstance()Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->appendSwitchesIfNeeded()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "use-ged-feature"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isPerformanceFeatureTrialEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "enable-performance-feature-trial"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_3
    const-string v0, "enable-hit-testable-scrollbar-in-visual-viewport"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    return-void
.end method

.method public static isCustomFeaturesInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;->sIsCustomFeaturesInitialized:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;->sIsInitialized:Z

    return v0
.end method

.method public static setCustomFeatures()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;->sIsCustomFeaturesInitialized:Z

    const-string v0, "csc-feature-user-agent"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getCustomUA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getFakeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isJapan()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "use-fake-id"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getFakeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "use-foldable-device-type-fold"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
