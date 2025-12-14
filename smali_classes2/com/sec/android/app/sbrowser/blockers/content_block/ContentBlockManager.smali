.class public Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$LazyHolder;
    }
.end annotation


# instance fields
.field private mAAADelegate:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;

.field private mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContentBlockReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

.field private mExtensionBlockerStatus:I

.field private mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

.field private mHandler:Landroid/os/Handler;

.field private mStatusListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

.field private final mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->createSimpleClient()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionBlockerStatus:I

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->lambda$new$1(Z)V

    return-void
.end method

.method private addEmergencyModeObserver()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initializeEmergencyModeObserverIfNeeded()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V

    return-void
.end method

.method public static synthetic b(Z)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->lambda$registerAAADelegate$0(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method private clearTemporarilyUnblockAds()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    :cond_0
    return-void
.end method

.method private createArrayTemporarilyUnblockAdsIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    return-object p0
.end method

.method private destroy()V
    .locals 2

    const-string v0, "ContentBlock.Manager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->resetContentBlocker()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->clearNumberOfBlockedContents()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->removeEmergencyModeObserver()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->unregisterBroadcastReceiver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->unregisterStatusListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->unregisterAAADelegate()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionBlockerStatus:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->addEmergencyModeObserver()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->clearTemporarilyUnblockAds()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->handleDelayedInitialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-void
.end method

.method private handleDelayedInitialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    return-void
.end method

.method private handleProvideNewBadge(Landroid/content/Context;)V
    .locals 3

    const-string v0, "handleProvideNewBadge"

    const-string v1, "ContentBlock.Manager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isUpdatedDirectDownloadNewBadge(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->getProvideNewBadge()Lcom/sec/android/app/sbrowser/common/blockers/ProvideNewBadge;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ProvideNewBadge;->isDirectDownloadEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    const-string p0, "handleProvideNewBadge set new badge"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setUpdatedDirectDownloadNewBadge(Landroid/content/Context;)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "handleProvideNewBadge direct download disabled"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->handleProvideNewBadge(Landroid/content/Context;)V

    return-void
.end method

.method private initializeEmergencyModeObserverIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$8;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    return-void
.end method

.method private initializeInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isUpdatedDirectDownloadNewBadge(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->registerAAADelegate(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mainLoopHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$2;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    if-eqz v1, :cond_2

    const-wide/16 p0, 0x0

    goto :goto_2

    :cond_2
    sget p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->CONFIG_INIT_DELAY:I

    int-to-long p0, p0

    :goto_2
    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initializeEmergencyModeObserverIfNeeded()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->registerContentBlockStatusListener(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->setEmergencyMode(Z)V

    return-void
.end method

.method private static synthetic lambda$new$1(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->getInstance()Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->dismissInfoBarIfNeeded()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->dismissIfNeeded()V

    return-void
.end method

.method private static synthetic lambda$registerAAADelegate$0(Z)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->isFullAntiAdblockAvoidanceEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->updatePromotionBannerConfiguration(Landroid/content/Context;)V

    return-void
.end method

.method private mainLoopHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->validateSelectedContentBlocker(Landroid/content/Context;)V

    return-void
.end method

.method private registerAAADelegate(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mAAADelegate:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isActivatedByConfig(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/firebase/messaging/m;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/m;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mAAADelegate:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mAAADelegate:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setAAADelegate(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerContentBlockStatusListener(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isActivatedByConfig(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->createArrayTemporarilyUnblockAdsIfNeeded()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mStatusListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

    if-nez p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$4;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mStatusListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mStatusListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

    invoke-static {p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setStatusListener(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;)V

    return-void
.end method

.method private reloadFilterData(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initContentBlocker(Landroid/content/Context;I)V

    return-void
.end method

.method private removeEmergencyModeObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    :cond_0
    return-void
.end method

.method private sendSILogInternal(Landroid/content/Context;)V
    .locals 9

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getInstalledPackageNames(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateAdblockerSILogLastSentTime(Landroid/content/Context;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object p1

    const-string v1, "ContentBlock.Manager"

    if-nez p1, :cond_0

    const-string p0, "Config model is null"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->getExtensionApps()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const v2, 0x6baaa

    const v3, 0x6baa9

    const/16 v4, 0x2c

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getLogID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getLogID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getLogID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getLogID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string p0, ","

    invoke-static {p0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Installed Packages: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v3, p1}, Lcom/sec/android/app/sbrowser/si_log/SILog;->sendStatus(IILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Enabled Packages: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->sendStatus(IILjava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string p0, "No ad blockers installed and/or enabled."

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    invoke-static {v4, v3, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->sendStatus(IILjava/lang/String;)V

    invoke-static {v4, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->sendStatus(IILjava/lang/String;)V

    return-void
.end method

.method private setEmergencyMode(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEmergencyMode, isEmergencyMode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentBlock.Manager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->resetContentBlocker()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->reloadFilterData(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private unregisterAAADelegate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mAAADelegate:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setAAADelegate(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mAAADelegate:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;

    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mContentBlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy unregisterReceiver : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentBlock.Manager"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mContentBlockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private unregisterStatusListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mStatusListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setStatusListener(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mStatusListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

    return-void
.end method

.method private updateBadgeConfiguration(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getInstalledPackageNames(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->hasLegacyBadgePackagePreference(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getLegacyBadgePackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBadgePackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateBadgePackageStatus(Landroid/content/Context;)V

    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->removeLegacyBadgePackage(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setExtensionsVisitedOnce(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->hasLegacyMenuLastVisitedTime(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->hasLegacyNewInstalledPackage(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBadgePackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateBadgePackageStatus(Landroid/content/Context;)V

    :goto_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->removeLegacyMenuLastVisitedTime(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setExtensionsVisitedOnce(Landroid/content/Context;)V

    return-void

    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->removeBadgePackageListIfNotInstalled(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBadgePackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBadgePackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    if-nez v1, :cond_8

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->hasNewBadgePackage(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    goto :goto_4

    :cond_7
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->wasExtensionsVisitedOnce(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_8
    :goto_4
    return-void
.end method

.method private updatePromotionBannerConfiguration(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isUpdatedBannerConfiguration(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeverShowBanner(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerAppsInstalled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setIsNeverShowBanner(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->resetBannerRepeatedCount(Landroid/content/Context;)V

    :cond_1
    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setIsUpdatedBannerConfiguration(Landroid/content/Context;Z)V

    return-void
.end method

.method private validateSelectedContentBlocker(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->updateBadgeConfiguration(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setSelectedPackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->updateBadgeConfiguration(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isDebugMode()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;

    move-result-object p0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerEnabled(Landroid/content/Context;Z)V

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->isWhite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->isNotAvailableSdk(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_4
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->removeSelectedPackageName(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getNumOfSelectedPackageNameList(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerEnabled(Landroid/content/Context;Z)V

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->isBlack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->showValidationErrorDialog(Landroid/content/Context;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentTemporarilyUnblockAds(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getCurrentContentBlockTabContext()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public initContentBlocker(Landroid/content/Context;I)V
    .locals 8

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->initDefaultContentBlocker(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->resetDefaultContentBlocker()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerEnabled(Landroid/content/Context;Z)V

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->resetContentBlocker()V

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->sendSILog(Landroid/content/Context;Z)V

    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionBlockerStatus:I

    const-string v1, "ContentBlock.Manager"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    const-string p0, "initContentBlocker initialize is in progress"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "run initContentBlocker"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionBlockerStatus:I

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$5;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;

    invoke-direct {v5, p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getAdditionalContentBlockData(Landroid/content/Context;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;I)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFileUtils;->getCachedFiltersFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setFiltersCacheFile(Ljava/io/File;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$1;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->initContentBlockerFromCache(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->initDefaultContentBlocker(Landroid/content/Context;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initializeInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "initialize Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.Manager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isContentBlockerPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x1000

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_1

    array-length p1, p0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    const-string v3, "com.samsung.android.sbrowser.permission.CONTENTBLOCKER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isContentBlockerPackage: No such package: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.Manager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v0
.end method

.method public isContentBlockerRunning()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionBlockerStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidContentBlockerPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "isValidContentBlockerPackage : "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.Manager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return p1
.end method

.method public onApplicationStateChange(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "ContentBlock.Manager"

    const-string v0, "onApplicationStateChange : HAS_DESTROYED_ACTIVITIES"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->destroy()V

    :cond_0
    return-void
.end method

.method public putCurrentTemporarilyUnblockAds(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getCurrentContentBlockTabContext()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 10

    const-string v0, "ContentBlock.Manager"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isActivatedByConfig(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mContentBlockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "package"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "com.samsung.android.sbrowser.contentBlocker.ACTION_UPDATE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;->isSecureFolderMode()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isGuestMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;

    move-result-object v5

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.sbrowser.beta.pending_intent.ContentBlock"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getPendingIntentFlagMutable()I

    move-result v8

    const/high16 v9, 0x8000000

    or-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {p1, v9, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    sget-object v8, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->FLAG_CHECK_CONDITION_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v8}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v1, v7, v8, v9}, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;)V

    const-string v1, "registerPendingIntent"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "SemEventDelegationManager: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mContentBlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mContentBlockReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mContentBlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1, p0, v6}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    :goto_2
    return-void
.end method

.method public removeCurrentTemporarilyUnblockAds(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getCurrentContentBlockTabContext()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mArrayTemporarilyUnblockAds:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendSILog(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeedToSendAdblockerSILog(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->sendSILogInternal(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public updateContentBlockerRuntimeSettings(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ContentBlock.Manager"

    const-string v1, "updateContentBlockerRuntimeSettings"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->mExtensionBlockerStatus:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isSitekeyEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->setSitekeyRulesEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isAAABaitElementDetectionEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->setAAABaitElementDetectionEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isAAABaitJavascriptDetectionEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->setAAABaitJavascriptDetectionEnabled(Z)V

    return-void
.end method

.method public updateFeatureConfig(Landroid/content/Context;)V
    .locals 8

    const-string p0, "ContentBlock.Manager"

    const-string v0, "updateFeatureConfig"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "promotion_allowlist"

    const/4 v1, 0x0

    const-string v2, "ContentBlock"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "enable_sitekey"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v1

    const-string v4, "use_featured_category"

    invoke-virtual {v1, v2, p1, v4, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    sget-object v3, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockGlobalConfigUtils$Companion;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockGlobalConfigUtils$Companion;->fetchDefaultFilterListFromGC()Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v4

    const-string v5, "aaa_bait_element_detection"

    const/4 v6, 0x1

    invoke-virtual {v4, v2, p1, v5, v6}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v5

    const-string v7, "aaa_bait_javascript_detection"

    invoke-virtual {v5, v2, p1, v7, v6}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setAAABaitElementDetectionEnabled(Landroid/content/Context;Z)V

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setAAABaitJavascriptDetectionEnabled(Landroid/content/Context;Z)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockGlobalConfigUtils$Companion;->fetchAAAFilterListFromGC()Z

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockGlobalConfigUtils$Companion;->fetchAAAMinimumLevelFromGC()Z

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updatePromotionAllowlist(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setSitekeyEnabled(Landroid/content/Context;Z)V

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setUseFeaturedCategory(Landroid/content/Context;Z)V

    return-void
.end method
