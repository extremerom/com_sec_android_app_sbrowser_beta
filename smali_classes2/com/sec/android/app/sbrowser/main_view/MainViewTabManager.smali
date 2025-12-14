.class public Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

.field private final mContext:Landroid/content/Context;

.field private final mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

.field private mTabSyncUtility:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

.field private mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->setTabManager(Landroid/app/Activity;Landroid/widget/FrameLayout;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->setTabManager(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->lambda$onPause$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-object p0
.end method

.method private finishFindOnPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishFindOnPage()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    return-object p0
.end method

.method private getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object p0

    return-object p0
.end method

.method private getOptionMenuBadgeCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getOptionMenuBadgeCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-object p0
.end method

.method private handleNoTabs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->handleNoTabs()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateAssistantMenuIfNecessary()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->finishFindOnPage()Z

    move-result p0

    return p0
.end method

.method private initSwipeTabPaging()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->initSwipeTabPaging()V

    return-void
.end method

.method private initializeForMultiFold()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setTabRestored(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->initSwipeTabPaging()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstanceId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->initializeBitmapManagerIfNeeded(I)V

    return-void
.end method

.method private isMainViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result p0

    return p0
.end method

.method private isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method private isNativePageUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getOptionMenuBadgeCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->handleNoTabs()V

    return-void
.end method

.method private synthetic lambda$onPause$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isAuthLockScreenShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->initSwipeTabPaging()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isMainViewShowing()Z

    move-result p0

    return p0
.end method

.method private notifyMultiTabCountChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyMultiTabCountChanged()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyMultiTabCountChanged()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method private onTabRemovedImpl(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyMultiTabCountChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyMultiTabCountChanged()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isTabRestoring()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isSecretModeEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isMultiTabShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->showNoTabsInMultiTab()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->handleNoTabs()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onHoverExit()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewConnectivity()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;->handleDataSendingOnNoTab()V

    :cond_4
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->notifyMultiTabCountChanged()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->onTabRemovedImpl(Z)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->updateOptionMenuBadgeVisibility(I)V

    return-void
.end method

.method private updateOptionMenuBadgeVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateOptionMenuBadgeVisibility(I)V

    return-void
.end method


# virtual methods
.method public canReopenClosedOldestTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->canReopenClosedOldestTab()Z

    move-result p0

    return p0
.end method

.method public closeOldestTab()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeOldestTab()I

    move-result p0

    return p0
.end method

.method public closeTabByMaxTabLimit(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTabByMaxTabSnackbar(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public dismissContextMenu()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->dismissContextMenu()V

    :cond_0
    return-void
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    const-string p0, "si__MainViewTabManager"

    const-string v0, "getCurrentTab, tab manager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    const-string p0, "si__MainViewTabManager"

    const-string v0, "getFocusedTab, tab manager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getHomePageUrl()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageForSecretMode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "internet-native://newtab/"

    return-object p0
.end method

.method public getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getOldestTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    const-string p0, "si__MainViewTabManager"

    const-string p1, "getTabById, tab manager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getTabCountOfCurrentGroup()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getTabCountOfGroup(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTabCountOfGroup(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getMemberCount(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getTabSyncUtility(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabSyncUtility:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabSyncUtility:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabSyncUtility:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;

    return-object p0
.end method

.method public getTabmanager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    return-object p0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    return-void
.end method

.method public isValidTab(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "si__MainViewTabManager"

    const-string p1, "isValidTab, tab manager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public loadContentPage()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getContentPageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const v3, 0x4000001

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    return-void
.end method

.method public loadHomePage()V
    .locals 7

    const-string v0, "si__MainViewTabManager"

    const-string v1, "loadHomePage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getHomePageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const v3, 0x4000001

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->reload()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->closeInfoBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setSplitViewSize(II)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isRecreating(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->destroy()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->onMainViewDestroyedByRecreate()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/b;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setImportance(Z)V

    :cond_0
    return-void
.end method

.method public onReadyToCreateTab(Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isRecreating(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v3, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldOpenLinksInSecretMode(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->loadState(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->restoreTabs(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->onReadyToShowTabAfterRecreate()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->initializeForMultiFold()V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstanceId()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setLastDesktopMode(IZ)V

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setLastFixedTabMode(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    sget-object p2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isSecretModeEnabled()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    const-string p2, "si__MainViewTabManager"

    const-string p3, "create a new current tab since there is no normal tab"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isLaunchContentPageSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->loadContentPage()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->loadHomePage()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isNeedToSkipShowTab()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isRecreating(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getWasRenderProcessGone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasInstantTab()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateInfoBar()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabRestored()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.intent.action.OPEN_NEW_SECRET_TAB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isSecretModeEnabled()Z

    move-result p0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadHomePageWithNewTab(ZLjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isRecreating(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateVoiceButtonStatus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isMainViewShowing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isSecretModeEnabled()Z

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentIndex(Z)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, ""

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v3, v1, v5}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadHomePageNewTab(ZLjava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v4, v1, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v4, v1, v5}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadHomePageNewTab(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eq v3, v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isTabRestoring()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_3
    :goto_0
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_7

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getWasRenderProcessGone()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isAuthLockScreenShown()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasInstantTab()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_5
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_6
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setContextMenuEnabled(Z)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->sendUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->restoreZoomValueIfNeeded(Z)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateParentalControlData()V

    :cond_9
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->saveState()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasInstantTab()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    :cond_1
    return-void
.end method

.method public reopenClosedOldestTab(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reopenCloseTabExceptTab(I)I

    move-result p0

    return p0
.end method

.method public requestUserAgent(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->requestUserAgent(ZLandroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez v0, :cond_0

    const-string p0, "si__MainViewTabManager"

    const-string p1, "setCurrentTab, tab manager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_2
    return-void
.end method

.method public setTabManager(Landroid/app/Activity;Landroid/widget/FrameLayout;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->onMainViewRecreated(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    return-void
.end method
