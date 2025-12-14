.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->setTabManager(Landroid/app/Activity;Landroid/widget/FrameLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->lambda$onTabStateLoaded$0()V

    return-void
.end method

.method private synthetic lambda$onTabStateLoaded$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->cleanUnusedBitmapsFromCache()V

    return-void
.end method


# virtual methods
.method public onAllTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onAllTabsRemoved(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getTabSyncUtility(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;->performBatchOperationOnTabDB()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->q(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->o(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->notifyAllTabsRemoved()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onHostTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewConnectivity()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;->handleDataSendingOnNoTab()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->clearAllBitmapCache()V

    return-void
.end method

.method public onAllUnlockedTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onAllUnlockedTabsRemoved()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onBackgroundTabOpened()V
    .locals 0

    return-void
.end method

.method public onBeforeTabHidden(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->o(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;I)V

    return-void
.end method

.method public onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->onCurrentTabChanged()V

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->onCurrentTabChanged()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->dismissDialogForNavigation()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v2, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setReaderPageEnabled(ZZZZ)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z

    move-result v3

    const-string v4, "si__MainViewTabManager"

    if-eqz v3, :cond_4

    const-string v3, "Find on page is finished"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->finishEditMode()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Edit mode is finished"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onCurrentTabChanged()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyLoadingStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->u(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;I)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "------------onCurrentTabChanged calling progress : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getProgress()D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getProgress()D

    move-result-wide v4

    mul-double/2addr v4, v7

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setProgress(I)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setProgress(I)V

    :goto_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getProgress()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_7

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->p(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isAboutBlankUrl()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setProgressbarVisibility(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->hideTopProgressBar()V

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyBackForwardStatusChanged()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyThemeColorChanged()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v4

    invoke-interface {v3, v0, v4, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyReaderStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->addOnDragListenerToContentView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->removeOnDragListenerToContentView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->onCurrentTabChanged()V

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getTabSyncUtility(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;->onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onCurrentTabChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onCurrentTabChanged()V

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->sendUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onCurrentTabChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateTaskDescriptionIfNeeded()V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIsBookmarked(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateZoomValue()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->closeDialog(Landroid/content/Context;)V

    return-void
.end method

.method public onFocusedTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyBackForwardStatusChanged()V

    return-void
.end method

.method public onInstantTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsBitmapCaptureDelayed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    return-void
.end method

.method public onInstantTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->removeBitmapFromAllMemCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method

.method public onLaunchNewTab(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadHomePageWithNewTab(ZLjava/lang/String;)V

    return-void
.end method

.method public onOtherTabsInGroupRemoved(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onOtherTabsRemoved(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onTabAdded, TabId:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "si__MainViewTabManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->o(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object p2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->notifyTabAdded(I)V

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getTabSyncUtility(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;->notifyTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->q(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z

    move-result p2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishNoTabsFragment()V

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabLaunchType()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromBackground()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsBitmapCaptureDelayed(Z)V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UserAgentUtils;->isSatisfiedLargeTabletMobileUAPolicy(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UserAgentUtils;->isSatisfiedMultiFoldMobileUAPolicy(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "Set mobile user agent for added tab"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-interface {p1, p0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setUseDesktopUserAgent(ZZ)V

    :cond_5
    return-void
.end method

.method public onTabGroupChanged(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onTabGroupNameChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->notifyTabGroupNameChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTabGroupUngrouped(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onTabGrouped(ZILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onTabOrderChanged(ZII)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onTabRemoved(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;Z)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->isLinkToWindowEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->sendTabData()V

    :cond_0
    return-void
.end method

.method public onTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getTabSyncUtility(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;->notifyTabRemoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->q(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->removeBitmapFromAllMemCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onHostTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onTabStateLoaded()V
    .locals 3

    const-string v0, "si__MainViewTabManager"

    const-string v1, "onTabStateLoaded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setTabRestored(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onTabStateLoaded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewConnectivity()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;->directLoadHandoffUrl()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/b;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForBitmapManager(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onTabTearingFinished()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onTabTearingFinished()V

    return-void
.end method

.method public onTabUngrouped(ZILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void
.end method

.method public onUnusedTabsClosed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onUnusedTabsClosed()V

    return-void
.end method
