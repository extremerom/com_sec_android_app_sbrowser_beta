.class public Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final FIXED_FRAME_MODEL_VALUE:[Ljava/lang/String;


# instance fields
.field private mConfigFileRequested:Z

.field private mIsNativeInitialized:Z

.field private mTestAllowList:[Ljava/lang/String;

.field private mTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v7, "0.75"

    const-string v8, "200000"

    const-string v0, "0.75"

    const-string v1, "1300"

    const-string v2, "10"

    const-string v3, "20"

    const-string v4, "10000"

    const-string v5, "36000"

    const-string v6, "0.7"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->FIXED_FRAME_MODEL_VALUE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mTestMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mConfigFileRequested:Z

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;-><init>()V

    return-void
.end method

.method private fetchConfigFile()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager$1;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher;->fetchConfigFile(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mConfigFileRequested:Z

    return-void
.end method

.method private getFeatureConfigs(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const-string p0, "SmartProtectConfigManager"

    const-string v0, "Read config successfully. version: "

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "features"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string p1, "version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in parseConfig: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method private getFeatureInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getFeatureInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    move-result-object v0

    return-object v0
.end method

.method private loadAndUpdateConfig()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mIsNativeInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->loadConfig()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->updateBlockMaliciousPushEnabled()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->updateBlockWebFingerprintingEnabled()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->updateBlockWebFingerprintingAllowedDomains()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->updateBlockPixelTrackingEnabled()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->updateBlockTrackingPixelAllowList()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->updateBlockFixedFrameEnabled()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->updateBlockFixedFrameAllowedStrings()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->updateBlockPluginFingerprintingLevel()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->updateMaliciousSiteDetectionEnabled()V

    return-void
.end method

.method private loadConfig()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "smart-protect-config.json"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mTestMode:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->init()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getFeatureConfigs(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->setFeatureConfigs(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "SmartProtectConfigManager"

    const-string v0, "Error in loadConfig"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateBlockFixedFrameAllowedStrings()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overlaying_fixed_frame_hider"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    const/16 v4, 0x2c

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "model:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    array-length p0, p0

    if-lez p0, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->FIXED_FRAME_MODEL_VALUE:[Ljava/lang/String;

    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    if-ge v1, p0, :cond_3

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockFixedFrameAllowedStrings(Ljava/lang/String;)V

    return-void
.end method

.method private updateBlockFixedFrameEnabled()V
    .locals 4

    const-string v0, "overlaying_fixed_frame_hider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->isFeatureEnabled(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "SmartProtectConfigManager"

    if-nez v0, :cond_0

    const-string p0, "FFHider  BrowsingAssist not Supported "

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v2

    :cond_0
    invoke-static {v2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getAntiTrackingLevel(Z)I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "FFHider  SAT is off "

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v2

    :cond_1
    const-string v0, "sbr.fixedframe.on"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, p0

    :goto_0
    if-eqz v1, :cond_3

    const-string p0, "FFHider  Enabled "

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p0, "FFHider  Disabled "

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockFixedFrameEnabled(Z)V

    return-void
.end method

.method private updateBlockMaliciousPushEnabled()V
    .locals 2

    const-string v0, "malicious_push_blocker"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->isFeatureEnabled(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->updateBlockMaliciousPushEnabled(Z)V

    return-void
.end method

.method private updateBlockPixelTrackingEnabled()V
    .locals 2

    const-string v0, "tracking_pixel_blocker"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->isFeatureEnabled(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "enable-block-tracking-pixel"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateBlockPluginFingerprintingLevel()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "plugin_fp_protection"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getFeatureLevel(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockPluginFingerprintingGcLevel(I)V

    return-void
.end method

.method private updateBlockTrackingPixelAllowList()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tracking_pixel_blocker"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mTestMode:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mTestAllowList:[Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    :goto_0
    array-length v2, v1

    if-ge p0, v2, :cond_2

    aget-object v2, v1, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge p0, v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    const-string p0, "block-tracking-pixel-allowlist"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateBlockWebFingerprintingAllowedDomains()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fingerprinting_protection"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockWebFingerprintingAllowedDomains(Ljava/lang/String;)V

    return-void
.end method

.method private updateBlockWebFingerprintingEnabled()V
    .locals 2

    const-string v0, "fingerprinting_protection"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->isFeatureEnabled(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockWebFingerprintingEnabled(Z)V

    return-void
.end method

.method private updateMaliciousSiteDetectionEnabled()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isMaliciousSiteDetectionSupported()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setMaliciousSiteDetectionEnabled(Z)V

    return-void
.end method


# virtual methods
.method public fileFetchSucceeded()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->loadAndUpdateConfig()V

    return-void
.end method

.method public getAddedEntryCountBoundary()I
    .locals 3

    const-string v0, "history-boundary"

    const/4 v1, 0x5

    const-string v2, "suspicious_redirect_blocker"

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getFeatureInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getBlockUnwantedWebpagesAvailableStatus()Z
    .locals 2

    const-string v0, "unwanted_webpages_blocker"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->isFeatureEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mTestMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mTestAllowList:[Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureLevel(Ljava/lang/String;I)I
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getFeatureLevel(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRedirectionHostCountBoundary()I
    .locals 3

    const-string v0, "redirect-boundary"

    const/4 v1, 0x5

    const-string v2, "suspicious_redirect_blocker"

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getFeatureInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSuspiciousSiteAllowList()[Ljava/lang/String;
    .locals 1

    const-string v0, "suspicious_redirect_blocker"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isConfigFileRequested()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mConfigFileRequested:Z

    return p0
.end method

.method public isFeatureEnabled(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->isFeatureEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSuspiciousRedirectionEnabled()Z
    .locals 2

    const-string v0, "suspicious_redirect_blocker"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->isFeatureEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onFeatureConfigUpdated()V
    .locals 2

    const-string v0, "SmartProtectConfigManager"

    const-string v1, "onFeatureConfigUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->fetchConfigFile()V

    return-void
.end method

.method public onNativeInitialized()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mIsNativeInitialized:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->loadAndUpdateConfig()V

    return-void
.end method

.method public setTestAllowList([Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mTestAllowList:[Ljava/lang/String;

    return-void
.end method

.method public setTestMode()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->mTestMode:Z

    return-void
.end method
