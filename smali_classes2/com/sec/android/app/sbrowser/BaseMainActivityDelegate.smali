.class Lcom/sec/android/app/sbrowser/BaseMainActivityDelegate;
.super Lcom/sec/android/app/sbrowser/BaseActivityDelegate;
.source "SourceFile"


# instance fields
.field protected mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceActivity;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/BaseMainActivityDelegate;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public static synthetic b(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/BaseMainActivityDelegate;->lambda$resetSyncDB$0(I)V

    return-void
.end method

.method private static synthetic lambda$resetSyncDB$0(I)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;-><init>(ILandroid/content/ContentValues;I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->execute()V

    return-void
.end method

.method private resetSyncDB()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetSyncDB instanceId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__BaseMainActivityDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/a;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onDestroy()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;->onNativeInitializationSuccess()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/BaseMainActivityDelegate;->resetSyncDB()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->shouldInitializeContentBlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/BaseMainActivityDelegate;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/net/HttpRequestHeaderHandler;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->onNativeInitialized()V

    sget-object v0, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfigUtils$Companion;

    iget-object v1, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfigUtils$Companion;->onNativeInitialized(Landroid/content/Context;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->onNativeInitialized()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->onNativeInitialized(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->onNativeInitialized(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->onNativeInitialized(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager;->onNativeInitializationSuccess()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;->getInstance()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;->onNativeInitializationSuccess()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->onNativeInitialization()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onPause()V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostInflation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onPostInflation()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/KerberosAuthenticator;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorObserver;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService;->initilize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->get()Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->setHttpAuthObserver(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;)V

    return-void
.end method

.method public onPreInflation()V
    .locals 1

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onPreInflation()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isContentBlockerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->initContentBlockerLists(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onStart()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isContentBlockerSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/BaseMainActivityDelegate;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    :cond_0
    return-void
.end method
