.class public Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;
.implements Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;


# instance fields
.field private mSBrowserOpenTabSyncUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

.field private mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

.field private final mTabSyncActivity:Lm/n;

.field private mTabSyncActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

.field private mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;


# direct methods
.method public constructor <init>(Lm/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncActivity:Lm/n;

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mSBrowserOpenTabSyncUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    :cond_0
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->lambda$triggerTabSyncManually$0()V

    return-void
.end method

.method private static synthetic lambda$triggerTabSyncManually$0()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->triggerSyncManually()V

    return-void
.end method

.method private updateDBonSyncCompleted()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDBonSyncCompleted: DownSyncCount :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getDownSyncCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabSyncController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getDownSyncCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->startTabSyncing(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->refreshUI()V

    return-void
.end method


# virtual methods
.method public callOnClickListener(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->callOnClickListener(Ljava/lang/String;)V

    return-void
.end method

.method public finishActivityWithResult(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncActivity:Lm/n;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncActivity:Lm/n;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getGlobalSyncInternetStatus(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isInternetSyncTurnedOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public getGroupDetails(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mSBrowserOpenTabSyncUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;->getGroupedDetailsFromTabTable(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public isAccountSignUp(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->onBackPressed()V

    return-void
.end method

.method public onChanged(ILjava/lang/Object;)V
    .locals 1

    const-string p2, "onChanged receiving propertyType = "

    const-string v0, "TabSyncController"

    invoke-static {p1, p2, v0}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3

    const/16 p2, 0xd

    if-eq p1, p2, :cond_2

    const/16 p2, 0xf

    if-eq p1, p2, :cond_1

    const/16 p2, 0x12

    if-eq p1, p2, :cond_0

    const-string p0, "onChanged wrong propertyType"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "receiving MASTER_SYNC_STATUS_CHANGED : "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->refreshUI()V

    goto :goto_0

    :cond_1
    const-string p1, "receiving UPDATE_SYNC_TAB_UI : "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->startTabSyncing(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "receiving SYNC_TAB_DELETE : "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->refreshUI()V

    goto :goto_0

    :cond_3
    const-string p1, "receiving TAB_SYNC_COMPLETED : downSyncCount "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->updateDBonSyncCompleted()V

    goto :goto_0

    :cond_4
    const-string p1, "receiving SYNC_COMPLETED : downSyncCount "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->updateDBonSyncCompleted()V

    :goto_0
    return-void
.end method

.method public onCreate(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->setSyncTabController(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncActivity:Lm/n;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->initializeUI(Lm/n;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->unregisterSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mSBrowserOpenTabSyncUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->onResume()V

    return-void
.end method

.method public setTabSyncDelegate(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    return-void
.end method

.method public setUiToTabSyncController(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    return-void
.end method

.method public triggerTabSyncManually()V
    .locals 1

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
