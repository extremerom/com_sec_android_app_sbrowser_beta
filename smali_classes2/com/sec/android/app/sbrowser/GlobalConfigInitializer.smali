.class public Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInitialized:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;->lambda$init$0()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/c;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;

    return-object v0
.end method

.method private static synthetic lambda$init$0()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;->sInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "GlobalConfigInitializer"

    const-string v1, "GlobalConfig is already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;->setInitialized(Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/AXWhiteListConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/global_config/AXWhiteListConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/WebApkFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/GoogleNewTabConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/global_config/GoogleNewTabConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/public_things/PublicThingsConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/public_things/PublicThingsConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/logging/LoadingFailTrackerConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/logging/LoadingFailTrackerConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/CidFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/global_config/CidFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/TestFeature;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/global_config/TestFeature;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateFeature;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateFeature;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSiteUpdaterRuleConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSiteUpdaterRuleConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/download/DownloadFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/TabManagerConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/global_config/TabManagerConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/SearchWindowConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/global_config/SearchWindowConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/CommonLoggingConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/si_log/model/CommonLoggingConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/push_messaging/global_config/PushMessagingConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/push_messaging/global_config/PushMessagingConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/SearchEngineCustomizationConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/global_config/SearchEngineCustomizationConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungCloudSyncConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungCloudSyncConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfig;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;->getInstance()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->completePutFeatures()V

    return-void
.end method

.method private static declared-synchronized setInitialized(Z)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public init()V
    .locals 1

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
