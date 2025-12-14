.class public Lcom/sec/android/app/sbrowser/extensions/SixManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/SixManager$LazyHolder;
    }
.end annotation


# instance fields
.field private mAppRecorder:Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;

.field private mIsNativeInitialized:Z

.field private mSAIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSixGlobalConfigFetcher:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

.field private mSixReceiver:Landroid/content/BroadcastReceiver;

.field private mSuggestedListMgr:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mIsNativeInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSAIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixGlobalConfigFetcher:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mAppRecorder:Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSuggestedListMgr:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;-><init>()V

    return-void
.end method

.method private destroy()V
    .locals 3

    const-string v0, "SixManager"

    const-string v1, "destroy running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSuggestedListMgr:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSuggestedListMgr:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->destroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->destroy()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->unregisterBroadcastReceiver(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->unregisterSixSAIntentsReceiver(Landroid/content/Context;)V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixGlobalConfigFetcher:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    return-object v0
.end method

.method private initializeInternal()V
    .locals 3

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->initialized()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mIsNativeInitialized:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->registerBroadcastReceiver(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->registerSixSAIntentsReceiver(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->collectInstalledExtInfo()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->composeSixAppList(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->showBlockedPopupIfNeeded(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateNBadgeOnAddOns()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->requestExtListFromGalaxyStoreIfNeeded(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRetailMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->changeDefaultTranslatorStatus(Z)Z

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mAppRecorder:Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->initialize()V

    return-void
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 6

    const-string v0, "SixManager"

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;->isSecureFolderMode()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.sbrowser.beta.pending_intent.SIX"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/sec/android/app/sbrowser/extensions/SixIntentsReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getPendingIntentFlagMutable()I

    move-result v4

    const/high16 v5, 0x8000000

    or-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    sget-object v4, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->FLAG_CHECK_CONDITION_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;)V

    const-string v2, "registerBroadcastReceiver - pendingIntent receiver registered"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {v2}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerBroadcastReceiver: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v0}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixIntentsReceiver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixIntentsReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_1
    return-void
.end method

.method private registerSixSAIntentsReceiver(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSAIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSAIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-static {p1}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSAIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "six_sa_update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Ll2/b;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string p0, "SixManager"

    const-string p1, "registerSixSAIntentsReceiver - mSAIntentReceiver registered"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestExtListFromGalaxyStoreIfNeeded(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getExtList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->shouldToGetExtList(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->addGetExtListCallback(Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$GetExtListCallback;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSuggestedListMgr()Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->registerGetExtListCallback(Landroid/content/Context;)Z

    move-result p0

    or-int/2addr p0, v0

    :goto_1
    if-eqz p0, :cond_2

    const-string p0, "SixManager"

    const-string v0, "requestExtListFromGalaxyStoreIfNeeded - sending request"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->requestExtListFromGalaxyStore(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->generateDownloadInfo(Landroid/content/Context;)V

    return-void
.end method

.method private showBlockedPopup(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 3

    new-instance v0, Lm/k;

    invoke-direct {v0, p1}, Lm/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140f9d

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140f9a

    goto :goto_0

    :cond_0
    const v1, 0x7f140f99

    :goto_0
    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixManager$4;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    const p1, 0x7f140fbb

    invoke-virtual {v0, p1, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixManager$3;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixManager$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixManager;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    const p0, 0x7f140610

    invoke-virtual {p1, p0, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showBlockedPopupIfNeeded(Landroid/content/Context;)V
    .locals 5

    const-string v0, "SixManager"

    if-nez p1, :cond_0

    const-string p0, "showBlockedPopupIfNeeded - context is null. Aborting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isBlocked()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->showBlockedPopup(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "ext_id"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ext_name"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "601"

    const-string v3, "6151"

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "showBlockedPopupIfNeeded - no sixappdata to work"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterBroadcastReceiver(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SixManager"

    if-nez p1, :cond_0

    const-string p0, "unregisterBroadcastReceiver - context is null. Aborting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    const-string p0, "unregisterBroadcastReceiver - already unregistered."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterBroadcastReceiver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private unregisterSixSAIntentsReceiver(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSAIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSAIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Ll2/b;->d(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSAIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public changeDefaultTranslatorStatus(Z)Z
    .locals 8

    const-string v0, "changeDefaultTranslatorStatus runs"

    const-string v1, "SixManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->collectDefaultCrxInfo(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/six/SixConstants;->LogIDs:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object v6

    if-nez v6, :cond_2

    const-string p0, "changeDefaultTranslatorStatus - Not Found: "

    invoke-static {p0, v5, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->isGivenDefaultExt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string p0, "changeDefaultTranslatorStatus - No default ext: "

    const-string p1, ", "

    invoke-static {p0, v5, p1}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->getNativeExtVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->getGivenDefaultExtVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " given"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const-string v0, "default_ext"

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setInstallSource(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "changeDefaultTranslatorStatus - Already ON: "

    invoke-static {p0, v5, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string p0, "changeDefaultTranslatorStatus - Already OFF: "

    invoke-static {p0, v5, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v0

    invoke-virtual {v0, v6, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeDefaultExtStatus(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->flushSixAppData()V

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v3
.end method

.method public flushSixAppData()V
    .locals 1

    const-string p0, "SixManager"

    const-string v0, "flushSixAppData running"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setSixAppDataList(Landroid/content/Context;)V

    return-void
.end method

.method public getInstalledExtAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "SixManager"

    if-eqz p0, :cond_0

    const-string p0, "getInstalledExtAppName - Empty name received. Aborting!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "getInstalledExtAppName - Could not search: "

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInstalledExtId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "SixManager"

    if-eqz p0, :cond_0

    const-string p0, "getInstalledExtId - Empty name received. Aborting!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "getInstalledExtId - Could not search: "

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "SixManager"

    if-eqz p0, :cond_0

    const-string p0, "getSixAppData - Empty ID received. Aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const-string p0, "getSixAppData - No SixAppData found. Aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSixAppList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSuggestedListMgr()Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSuggestedListMgr:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSuggestedListMgr:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSuggestedListMgr:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    return-object p0
.end method

.method public initialize()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->initializeInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SixManager"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isDefaultTranslator(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isTranslatorExt(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isDefaultTranslatorInstalled()Z

    move-result p0

    return p0
.end method

.method public isDefaultTranslatorInstalled()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/six/SixConstants;->LogIDs:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "isDefaultTranslator - Not Found: "

    const-string v1, "SixManager"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    new-instance v3, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->collectDefaultCrxInfo(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->isGivenDefaultExt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public isEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->isSupportedByConfig(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string v0, "601"

    const-string v1, "6120"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->setSupportedByConfig(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isFirstLaunchSinceInstall(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SixManager"

    const-string v0, "isFirstLaunchSinceInstall - No data to work, aborting.."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mIsNativeInitialized:Z

    return p0
.end method

.method public isPrivacyPopupEnabled()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sixPrivacyPopup"

    const/4 v2, 0x1

    const-string v3, "SIX"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isRunningSecretMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isTranslatorExt(Ljava/lang/String;)Z
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/six/SixConstants;->LogIDs:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object p0, p0, v0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onApplicationStateChange(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "SixManager"

    const-string v0, "onApplicationStateChange : HAS_DESTROYED_ACTIVITIES"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->destroy()V

    :cond_0
    return-void
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixGlobalConfigFetcher:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixGlobalConfigFetcher:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager;->mSixGlobalConfigFetcher:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->onFeatureConfigUpdated(Landroid/content/Context;)V

    return-void
.end method

.method public performSixPkgUpdateIfNeeded()V
    .locals 2

    const-string v0, "performSixPkgUpdateIfNeeded running"

    const-string v1, "SixManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->reviveTerminatedExtsIfExist()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->checkDefaultExtUpdate()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->performSixPkgUpdateIfNeeded()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "performSixPkgUpdateIfNeeded - SIX disabled"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reloadExt(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "SixManager"

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "reloadExt - reloading ext: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->reloadExtension(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isDefaultTranslatorInstalled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "reloadExt - turn on default ext: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->changeDefaultTranslatorStatus(Z)Z

    :cond_1
    return-void
.end method

.method public sendDetailSettingsIntent(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 3

    const-string p0, "SixManager"

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x14000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "sendDetailSettingsIntent - exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "sendDetailSettingsIntent - No pkg found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setFirstLaunchToFalse(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "SixManager"

    if-eqz p0, :cond_0

    const-string p0, "setFirstLaunchToFalse - No extension ID, aborting.."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setNoMoreFirstLaunch()V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "setFirstLaunchToFalse - Not found: "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDefaultTranslatorStatus()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRetailMode()Z

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
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->changeDefaultTranslatorStatus(Z)Z

    move-result p0

    return p0
.end method
