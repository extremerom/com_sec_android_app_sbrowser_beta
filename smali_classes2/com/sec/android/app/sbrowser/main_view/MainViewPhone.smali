.class public Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;
.super Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;
.source "SourceFile"


# instance fields
.field protected mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;

.field mMainViewBixby:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

.field private mNewTabAnimTimer:Ljava/util/Timer;

.field private mTabAnimatorDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mMainViewBixby:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    return-void
.end method

.method private canInitSwipeTabPaging()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->isTabRestored()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTabCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->supportToolbarSwipe(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private createHideToolbarDelegate()Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V

    return-object v0
.end method

.method private createNewBackgroundTab(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewBackgroundTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    invoke-interface {p3, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyTabCreated(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/h;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0, p3}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onOpenInNewTabBackground(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method private enableToolbars(Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->updateHideStatusBar(Landroid/app/Activity;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableToolbarButtons(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->enableBottomBarButtons(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->enableTabBarContainer(Z)V

    :cond_4
    return-void
.end method

.method private handleSwipeEvent()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method private declared-synchronized hideNewTabAnim()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "si__MainViewPhone"

    const-string v1, "[hideNewTabAnim]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mNewTabAnimation:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;

    if-nez v0, :cond_0

    const-string v0, "si__MainViewPhone"

    const-string v1, "[hideNewTabAnim] mNewTabAnimation already null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->hideAnimLayout()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mNewTabAnimation:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private isAiSplitOverShowing()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->isSummarySplitOverShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadAloudHighlightResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->isReadAloudSplitOverShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isNotResized()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isKeyboardOrClipboardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isTopInstanceInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->lambda$openInNewTabBackground$5(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->lambda$loadStartedWithNewTab$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->lambda$showGroupNameDialog$4(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$createNewBackgroundTab$6(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initSwipeTabPaging$2()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->changeMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->changeMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onSwipeViewRemoved()V

    return-void
.end method

.method private synthetic lambda$initSwipeTabPaging$3()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/a;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/main_view/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getSwipeDelegate()Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->setDelegate(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;)V

    return-void
.end method

.method private synthetic lambda$launchMultiTabStack$1(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->launchMultiTabStackInternal(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->enableToolbars(Z)V

    return-void
.end method

.method private synthetic lambda$loadStartedWithNewTab$0(Ljava/lang/Void;)V
    .locals 1

    const-string p1, "si__MainViewPhone"

    const-string v0, "[onFirstVisuallyNonEmptyPaint] hideNewTabAnim"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->cancelNewTabTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->hideNewTabAnim()V

    return-void
.end method

.method private synthetic lambda$openInNewTabBackground$5(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f14103e

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->createNewBackgroundTab(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$showGroupNameDialog$4(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;I)V

    return-void
.end method

.method private launchNewTabAfterAnimation(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "si__MainViewPhone"

    const-string v1, "[launchNewTabAfterAnimation]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->launchNewTab(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->launchNewTab(ZLjava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mNewTabAnimTimer:Ljava/util/Timer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "internet-native://newtab/"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->lambda$createNewBackgroundTab$6(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->lambda$launchMultiTabStack$1(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->lambda$initSwipeTabPaging$3()V

    return-void
.end method

.method private openInNewTabBackground(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f14103e

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->createNewBackgroundTab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->BACKGROUND:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/N;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/N;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v1, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->lambda$initSwipeTabPaging$2()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mNewTabAnimTimer:Ljava/util/Timer;

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->hideNewTabAnim()V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->launchNewTabAfterAnimation(ZLjava/lang/String;)V

    return-void
.end method

.method private updateToolbarVisibility(Landroid/content/res/Configuration;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->toggleHideToolbarMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayout()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFindOnPageRunning()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->shouldTopBarShow()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p2, v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->shouldBottomBarShow()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->shouldShowBottomBarShadow()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->forceCapture()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->forceCapture()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isNewQuickAccessNativePage()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isTabletLayout(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v2, :cond_8

    if-ne p1, v1, :cond_b

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isFullScreenMode()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFindOnPageRunning()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isStatusBarHidden(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->bringToFront()V

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getOptionMenuBadgeCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->updateOptionMenuBadgeVisibility(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method public addBookmark()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;->ADD_BOOKMARK_BIXBY:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    return-void
.end method

.method public addBookmark(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;->LAUNCH_ADDBOOKMARK:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;->TOOGLE_BOOKMARK:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    return-void
.end method

.method public addBottombar()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBottombarLayout()V

    return-void
.end method

.method public addToolbar()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayout()V

    return-void
.end method

.method public canReopenClosedOldestTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->canReopenClosedOldestTab()Z

    move-result p0

    return p0
.end method

.method public cancelNewTabTimer()V
    .locals 2

    const-string v0, "si__MainViewPhone"

    const-string v1, "[cancelNewTabTimer]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mNewTabAnimTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mNewTabAnimTimer:Ljava/util/Timer;

    return-void
.end method

.method public cancelReaderMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isReaderModeInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "si__MainViewPhone"

    const-string v2, "[cancelReaderMode] : reader mode canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setReaderPageEnabled(ZZZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->onReaderModeCanceled()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f140bc7

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->disableReaderButton()V

    return-void
.end method

.method public checkOnBackPressedMultiTab()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->checkOnBackPressed()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public closeAllTabsForBixby()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllTabs()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->closeAllTabsForBixby()V

    :goto_0
    return-void
.end method

.method public closeCurrentTabForBixby()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->closeCurrentTabForBixby(I)V

    :goto_0
    return-void
.end method

.method public closeOldestTab()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->closeOldestTab()I

    move-result p0

    return p0
.end method

.method public closeTabByMaxTabLimit(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->closeTabByMaxTabLimit(I)Z

    move-result p0

    return p0
.end method

.method public configureBottombar()V
    .locals 6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "configureBottombar, isTablet = "

    const-string v2, "si__MainViewPhone"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mIsTablet:Z

    if-eq v1, v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v1

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isResultViewShowing()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->shouldBottomBarShow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "configureBottombar, bottombar visibility : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->changeMode()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateToolbarButtonsVisibility()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->requestUserAgent(Z)V

    :cond_5
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mIsTablet:Z

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mIsTablet:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateHeight()V

    :cond_7
    return-void
.end method

.method public createNewTabAnim(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->cancelNewTabTimer()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->inflateNewTabAnimLayout()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "si__MainViewPhone"

    const-string p1, "[createNewTabAnim] fail to inflate"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->setMainViewDelegate(Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;)V

    return-object v0
.end method

.method public dismissGroupNameDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method public getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getMenuPopupAnchorView(I)Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getAllToolbarItems(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isMobileLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getButton(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isMobileLayout()Z

    move-result p1

    const v0, 0x7f0b0069

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getButton(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getReadAloudSupplierType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTopMargin()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getVisibleHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getVisibleBottomMargin()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->isNotResized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getVisibleTopMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public handleBixbyIntent(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mMainViewBixby:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->handleBixbyIntent(Landroid/content/Intent;)Landroid/content/Intent;

    return-void
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewKeyEvent:Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->handleKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public initMainViewTabClickListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->initMainViewTabClickListener()V

    return-void
.end method

.method public initSwipeTabPaging()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->canInitSwipeTabPaging()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/M;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/M;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public isMultiTabLaunchedByBixby()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mMainViewBixby:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isMultiTabLaunchedByBixby()Z

    move-result p0

    return p0
.end method

.method public isTabAnimationRunning()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isAnimationRunning()Z

    move-result p0

    return p0
.end method

.method public isTabRestored()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabRestored:Z

    return p0
.end method

.method public launchMultiTabStack()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->launchMultiTabStack(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void
.end method

.method public launchMultiTabStack(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    const-string v2, "si__MainViewPhone"

    if-nez v1, :cond_0

    const-string p0, "launchMultiTabStack failed : getCurrentTab() == null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->isTabTearing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->onTabTearingFinished()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstanceId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->initializeBitmapManagerIfNeeded(I)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setContextMenuEnabled(Z)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableToolbarButtons(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->enableBottomBarButtons(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->enableTabBarContainer(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->enableHideToolbar(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V

    move v1, v4

    :cond_5
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReadyToShow()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v1, :cond_7

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "[launchMultiTabStack] launch directly"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->launchMultiTabStackInternal(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->enableToolbars(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/M;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/M;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    :goto_0
    const-string v1, "[launchMultiTabStack] set runnable to launch"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->finishEditMode()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/h;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onToolbarOffsetChanged(Landroid/app/Activity;F)V

    return-void
.end method

.method public launchNewTabFromSyncTab(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->finishNoTabsFragment()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->closeMultiTabByNewIntent()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public launchNewTabWithAnim(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->launchNewTabWithAnim(ZLjava/lang/String;)V

    return-void
.end method

.method public launchNewTabWithoutAnim(ZZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->closeMultiTabByNewIntent()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v1, v2, p1, p3, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadHomePage()V

    :goto_0
    return-void
.end method

.method public loadStartedWithNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    const-string v0, "si__MainViewPhone"

    const-string v1, "[loadStartedWithNewTab]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/L;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/L;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setMainViewPhoneCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public notifyBackForwardStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isUrlEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackForwardStatusChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackForwardStatusChanged()V

    :cond_3
    return-void
.end method

.method public notifyReaderStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->notifyReaderStatusChanged(ZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateAiButtonStatus()V

    return-void
.end method

.method public notifyThemeColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->onThemeColorChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->notifyThemeChanged()V

    return-void
.end method

.method public onBottombarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isMultiTabClosing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isUrlEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->onDestroy()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->onDestroy()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onFinishInflate()V

    new-instance v7, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v6

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewPreference:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->setMultiTab(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateHistoryNaviAnchorView()V

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->createHideToolbarDelegate()Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->toggleHideToolbarMode()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mTabAnimatorDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->canSwipeTabPaging()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->shouldIntercept(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->handleSwipeEvent()V

    :cond_0
    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabAnimationRunning:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_3
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabAnimationRunning:Z

    return p0
.end method

.method public onLayoutModeChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onLayoutModeChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->updateToolbarVisibility()V

    return-void
.end method

.method public onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->setRecreating(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {v0, p6}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;I)V

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;I)V
    .locals 9

    move-object v0, p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->finishFindOnPage()Z

    :cond_1
    if-eqz p5, :cond_2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->openInNewTabBackground(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onPostInflation(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->onPostInflation(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->shouldShowBottomBarShadow()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getFixedHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mIsTablet:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mIsTablet:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->notifyThemeColorChanged()V

    :cond_1
    return-void
.end method

.method public onReadAloudToolbarMaximized()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->updateBottomBarForSplitOverSheet(Z)V

    return-void
.end method

.method public onReadAloudToolbarMinimized()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->updateBottomBarForSplitOverSheet(Z)V

    return-void
.end method

.method public onReaderAnimationCleared(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onReaderAnimationCleared(Z)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->contains(Landroid/view/View;[III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public onSmartTipShow()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onSmartTipShow()V

    return-void
.end method

.method public onTabGroupListChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->dismissGroupNameDialog()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->canSwipeTabPaging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public openNewTabOnTabManager()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->openNewTabOnTabManager()V

    return-void
.end method

.method public prepareRecreate()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->setRecreating(Landroid/app/Activity;Z)V

    return-void
.end method

.method public removeBottombar()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeToolbar()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public reopenClosedOldestTab(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->reopenClosedOldestTab(I)I

    move-result p0

    return p0
.end method

.method public resetMultiTabCount()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->resetMultiTabCount()V

    return-void
.end method

.method public restoreMultiTabCount()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyMultiTabCountChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyMultiTabCountChanged()V

    return-void
.end method

.method public scrollTab(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->scrollTab(I)V

    return-void
.end method

.method public shouldBottomBarShow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mIsPictureInPicture:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFindOnPageRunning()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->isAiSplitOverShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->isNotResized()Z

    move-result p0

    return p0

    :cond_8
    :goto_0
    return v1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowBottomBarShadow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->shouldShowBottomBarShadow()Z

    move-result p0

    return p0
.end method

.method public shouldTopBarShow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isQuickAccessSwipeViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isNewQuickAccessNativePage()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isNewQuickAccessNativePage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isLocationBarEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFindOnPageRunning()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->isAiSplitOverShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_8
    :goto_0
    return v1

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->isNotResized()Z

    move-result p0

    return p0
.end method

.method public showGroupNameDialog(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;II)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dismissDialog()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getGroupNameList()Ljava/util/List;

    move-result-object v2

    new-instance v3, LEa/a;

    invoke-direct {v3, p0, p1, p2, p3}, LEa/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;

    const/4 p1, 0x0

    if-eqz p4, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p4, p2}, Landroid/view/View;->getLocationInWindow([I)V

    aget p3, p2, p1

    add-int/2addr p5, p3

    const/4 p3, 0x1

    aget p2, p2, p3

    add-int/2addr p6, p2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;

    const-string p2, ""

    invoke-virtual {p0, p5, p6, p2, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->showDialog(IILjava/lang/String;I)V

    return-void
.end method

.method public startTabAnimation()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->DELETE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3
    .param p2    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->mTabAnimatorDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;Landroid/view/ViewGroup;)V

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->setFillAfter(Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$4;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$4;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)V

    invoke-interface {p4, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mTabAnimator:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    if-eqz p3, :cond_1

    new-instance p4, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;

    invoke-direct {p4, p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, p4}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->CREATE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateLayout(Landroid/content/res/Configuration;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateLayout, isInMultiWindowMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewPhone"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->configureBottombar()V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->updateToolbarVisibility(Landroid/content/res/Configuration;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->initSwipeTabPaging()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->mTabAnimator:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->cancelAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabAnimationRunning:Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isNewQuickAccessNativePage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateWindowMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->notifyThemeColorChanged()V

    :cond_1
    return-void
.end method

.method public updateMultiTabView()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->loadMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->updateMultiTabView()V

    return-void
.end method

.method public updateOptionMenuBadgeVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateOptionMenuBadgeVisibility(I)V

    return-void
.end method

.method public updateToolbarVisibility()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->updateToolbarVisibility(Landroid/content/res/Configuration;Z)V

    return-void
.end method

.method public updateVoiceButtonStatus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->updateRecognizeSpeechAvailable(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyButtonAvailabilityChanged()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->updateVoiceButtonStatus()V

    :cond_1
    return-void
.end method
