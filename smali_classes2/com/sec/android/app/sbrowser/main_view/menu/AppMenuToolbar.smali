.class public Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

.field protected mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field protected mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

.field protected mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field protected mToolsMenu:Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->lambda$startSitesActivity$0(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    move-result-object p0

    return-object p0
.end method

.method private isMenuItem(I)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->isMoreMenuItem(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$startSitesActivity$0(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)V

    return-object v0
.end method


# virtual methods
.method public closeAllTabs()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AppMenuToolbar"

    const-string v0, "closeAllTabs - tab manager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllTabs(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllTabs(Z)V

    return-void
.end method

.method public dismissToolsDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mToolsMenu:Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->dismissToolsDialog()V

    :cond_0
    return-void
.end method

.method public finishOrMoveTaskToBack()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "AppMenuToolbar"

    if-eqz v0, :cond_0

    const-string v0, "finishOrMoveTaskToBack, finish"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "finishOrMoveTaskToBack, moveTaskToBack"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :goto_0
    return-void
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getMoreMenuRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mToolsMenu:Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->getMoreMenuRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public onBackClicked()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string p0, "AppMenuToolbar"

    const-string v0, "onBackClicked failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v1

    const v2, 0x7f0b0047

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->isMenuItem(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordBackClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->clearFocusUrlBar()V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->goBack()V

    return-void
.end method

.method public onBookmarksClicked()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v1, "AppMenuToolbar"

    if-nez v0, :cond_0

    const-string p0, "onBookmarksClicked failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isBookmarkShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onBookmarksClicked, Bookmarks is already showing, return"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->isMenuItem(I)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordBookmarksClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->openSites(IZI)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mToolsMenu:Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onForwardClicked()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string p0, "AppMenuToolbar"

    const-string v0, "onForwardClicked failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v1

    const v2, 0x7f0b005e

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->isMenuItem(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordForwardClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->clearFocusUrlBar()V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->goForward()V

    return-void
.end method

.method public onHomeClicked()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AppMenuToolbar"

    const-string v0, "onHomeClicked failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsUnifiedHomePage()Z

    move-result v2

    const v3, 0x7f0b0060

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->isMenuItem(I)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordHomeClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->clearFocusUrlBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadHomePage()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->showNewsPromotion(Landroid/app/Activity;)V

    return-void
.end method

.method public onMore()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mToolsMenu:Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mToolsMenu:Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordMoreMenuClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->dismissEditBookmarkSnackBarIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mToolsMenu:Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->onMenuKeyClicked()V

    return-void
.end method

.method public onTabsClicked()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v1, "AppMenuToolbar"

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderTabLoadFinished()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "onTabsClicked failed : Reader tab load is not finished"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isReaderModeInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "onTabsClicked failed : Reader mode is in progress"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    const v1, 0x7f0b0078

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->isMenuItem(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordTabsClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->dismissEditBookmarkSnackBarIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceStylusWritingController;->hideHandwritingToolbar()V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->launchMultiTabStack()V

    return-void

    :cond_5
    :goto_0
    const-string p0, "onTabsClicked failed : tab == null || !mMainView.isMainViewShowing()"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public openSites(IZI)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->clearFocusUrlBar()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->startSitesActivity(IZI)V

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public startSitesActivity(IZI)V
    .locals 8

    const-string v0, "AppMenuToolbar"

    const-string v1, "MainActivityId is : "

    const-string v2, "startSitesActivity - starting sites activity"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setBookmarkShowing(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/Sites;->setBookmarkController(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    new-instance v6, LHa/a;

    const/16 v7, 0x10

    invoke-direct {v6, v7, p0, v3}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v4, p2, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->initializeBookmarkData(Landroid/content/Context;ZZLcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarkViewCallback;)V

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/sites/SitesIntentHelper;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isBookmarkAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "url"

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "title"

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getMainActivityId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SBrowserMainActivityContextId"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x24000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const/16 p2, 0x7d

    invoke-static {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;ILandroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ActivityNotFoundException :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
