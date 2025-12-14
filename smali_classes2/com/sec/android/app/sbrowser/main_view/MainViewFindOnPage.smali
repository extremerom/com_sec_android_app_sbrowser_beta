.class public Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFindOnPageKeyword:Ljava/lang/String;

.field private mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageKeyword:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageKeyword:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    return-object p0
.end method

.method private getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method private isTabBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabBarShowing()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public finishFindOnPage()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->finishFindOnPage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->restoreReadAloudToolbar()V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->scrollToCurrentTabButton()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableToolbarButtons(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setBaseLayoutAccessibilityEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateBookmarkBarVisibility(Z)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiButtonStatus()V

    return v1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getFindOnPageToolbar()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    return-object p0
.end method

.method public notifyThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->notifyBackgroundColorChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onFindOnPage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->startFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public onFindOnPageResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;II)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setFindResult(II)V

    return-void
.end method

.method public onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V

    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getFindOnPageToolbar()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getFindOnPageToolbar()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "si__MainViewFindOnPage"

    const-string v0, "set toolbar buttons disabled"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableToolbarButtons(Z)V

    :cond_0
    return-void
.end method

.method public startFindOnPage(Ljava/lang/String;)V
    .locals 5

    const-string v0, "si__MainViewFindOnPage"

    const-string v1, "startFindOnPage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mActivity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f0e0218

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideInfoBar()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    new-instance v4, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setListener(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->notifyBackgroundColorChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->startFindOnPageWithTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setPredictiveText()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateToolbarBtn()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiButtonStatus()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->hideReadAloudToolbar(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableToolbarButtons(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->startFindOnPage()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setBaseLayoutAccessibilityEnabled(Z)V

    return-void
.end method

.method public updateVoiceButtonStatus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->notifyButtonAvailabilityChanged()V

    :cond_0
    return-void
.end method
