.class public abstract Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/MainView;
.implements Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;
.implements Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
.implements Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
.implements Lcom/sec/android/app/sbrowser/tab/TabLayout;
.implements Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

.field private final mBookmarkAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;

.field private mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

.field protected mBottomControlsOffsetYPix:F

.field private final mContentViewDragListener:Landroid/view/View$OnDragListener;

.field protected mContentsLayout:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;

.field private mForceStatusbarUpdate:Z

.field protected mHideToolbarManager:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

.field private mIntentHandler:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

.field protected mIsAssistIntentOngoing:Z

.field protected mIsBookmarkShowing:Z

.field protected mIsClearDisplayed:Z

.field protected mIsInitialized:Z

.field protected mIsInstanceStateSaved:Z

.field protected mIsNativeInitialized:Z

.field protected mIsResumed:Z

.field private mIsSettingLayout:Z

.field protected mIsTabAnimationRunning:Z

.field protected mIsTabBarVisibilityChanged:Z

.field protected mIsTabRestored:Z

.field protected mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

.field protected mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field protected mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

.field protected mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

.field protected mMainViewActivityResult:Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;

.field protected mMainViewBitmapManager:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

.field protected mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

.field protected mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

.field protected mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

.field protected mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

.field protected mMainViewKeyEvent:Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;

.field private mMainViewMedia:Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

.field protected mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

.field protected mMainViewNoTabs:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

.field protected mMainViewPreference:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

.field protected mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

.field private mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

.field protected mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

.field protected mMainViewTabDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

.field protected mMainViewTabListener:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

.field protected mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

.field private mMainViewTheme:Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;

.field protected mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

.field protected mMainViewTransBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

.field private mMainViewUrlEditMode:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

.field protected mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

.field protected mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

.field private mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field protected mParentTabForCreateContent:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mSBrowserViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

.field protected mSaLoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

.field protected mSaveWebPage:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

.field protected mSplitTab:Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;

.field protected mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field protected mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

.field protected mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

.field protected mTopControlsOffsetYPix:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBitmapManager:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsInitialized:Z

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v1

    invoke-direct {p2, v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabListener:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v1

    invoke-direct {p2, v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/a;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/a;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBookmarkAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->initialize()V

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-direct {p2, v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setAppMenu(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-direct {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v1

    invoke-direct {p2, p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewActivityResult:Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/K;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/K;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mContentViewDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->lambda$inputUrl$2()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->lambda$new$0(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->lambda$onResultViewVisibilityChanged$3()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->lambda$new$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method private forceUpdateStatusBarThemeColor()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setForceStatusBarUpdate(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->notifyStatusBarThemeColorChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setForceStatusBarUpdate(Z)V

    return-void
.end method

.method private handleAssistantMenuItemClicked()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->handleAssistantMenuItemClicked()V

    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    :cond_0
    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabListener:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->setMainActivityListener(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;)V

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    return-void
.end method

.method private synthetic lambda$inputUrl$2()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setFocusUrlBar()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onDropEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIsBookmarked(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onResultViewVisibilityChanged$3()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldShowBottomBarShadow()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    return-void
.end method

.method private onDropEvent(Landroid/view/DragEvent;)Z
    .locals 0
    .param p1    # Landroid/view/DragEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onDropEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method private registerBookmarkListener()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBookmarkAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;-><init>(Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    return-void
.end method

.method private unregisterBookmarkListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public addBookmarkBar()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->addBookmarkBar()V

    return-void
.end method

.method public addOnDragListenerToContentView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mContentViewDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p1, p0}, Lcom/sec/terrace/Terrace;->addOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public attachRenderViewIfNeeded(Landroid/widget/FrameLayout;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0a6a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setBackgroundColorToDefault()V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public canSwipeTabPaging()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->supportToolbarSwipe(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->isSummarySplitOverShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->isReadAloudSplitOverShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabCount()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public checkUseSecretMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->checkUseSecretMode()Z

    move-result p0

    return p0
.end method

.method public closeAllTabs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllTabs()V

    return-void
.end method

.method public closeAllTabsInternal()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->closeAllTabsInternal()V

    return-void
.end method

.method public closeMultiTabByNewIntent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->closeMultiTabByNewIntent()V

    return-void
.end method

.method public convertBitmapToolbarToView()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->convertBitmapToolbarToView()V

    return-void
.end method

.method public dismissEditBookmarkSnackBarIfNeeded()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->dismissEditBookmarkSnackBarIfNeeded()V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDragInfo;->isDragging(Landroid/view/DragEvent;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_1
    return v3

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->isTabTearing()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eq v0, v2, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->notifyTabTearingFinished()V

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->isInTabBarArea(Landroid/view/DragEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isInToolbarArea(Landroid/view/DragEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isInBottomBarArea(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->notifyTabTearingFinished()V

    return v3

    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public enableAddBookmarkButton(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->enableAddBookmarkButton(Z)V

    :cond_0
    return-void
.end method

.method public finishFindOnPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->finishFindOnPage()Z

    move-result p0

    return p0
.end method

.method public getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    return-object p0
.end method

.method public getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBitmapManager:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    return-object p0
.end method

.method public getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBottomControlsOffsetYPix()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBottomControlsOffsetYPix:F

    return p0
.end method

.method public getBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getContentLayout()Landroid/widget/FrameLayout;
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabId()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    return p0
.end method

.method public getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getFindOnPage()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->getFindOnPageToolbar()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getFullScreenBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->getFullscreenBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getGroupColorValue(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorValue(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getGroupColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getGroupNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupNameList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    return-object p0
.end method

.method public getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getIntentHandler()Lcom/sec/android/app/sbrowser/main_view/IntentHandler;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIntentHandler:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v6

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIntentHandler:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIntentHandler:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    return-object p0
.end method

.method public getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    return-object p0
.end method

.method public getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->unregisterBookmarkListener()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setBookmarkBarInterface()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    return-object p0
.end method

.method public getMainViewConnectivity()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    return-object p0
.end method

.method public getMainViewMedia()Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMedia:Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v6

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMedia:Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMedia:Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    return-object p0
.end method

.method public getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    return-object p0
.end method

.method public abstract synthetic getMoreMenuRect()Landroid/graphics/Rect;
.end method

.method public getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object p0

    return-object p0
.end method

.method public getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-object p0
.end method

.method public abstract synthetic getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
.end method

.method public getOptionMenuBadgeCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getOptionMenuBadgeCount()I

    move-result p0

    return p0
.end method

.method public getReadAloudSupplierMode()Ljava/lang/String;
    .locals 0

    const-string p0, "Read Articles"

    return-object p0
.end method

.method public abstract synthetic getReadAloudSupplierType()I
.end method

.method public getSBrowserViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSBrowserViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    if-nez v0, :cond_0

    new-instance v0, LZ3/x;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroidx/lifecycle/y0;

    invoke-direct {v0, v1}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-virtual {v0, v1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSBrowserViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSBrowserViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    return-object p0
.end method

.method public getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSaLoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    return-object p0
.end method

.method public getSaveInstanceState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsInstanceStateSaved:Z

    return p0
.end method

.method public getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSaveWebPage:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSaveWebPage:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSaveWebPage:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    return-object p0
.end method

.method public getSplitTab()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewSplitTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSplitTab:Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;

    return-object p0
.end method

.method public getStatusBarColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTheme:Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->getStatusBarColor()I

    move-result p0

    return p0
.end method

.method public getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method public getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTabCountOfCurrentGroup()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getTabCountOfCurrentGroup()I

    move-result p0

    return p0
.end method

.method public getTabCountOfGroup(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getTabCountOfGroup(I)I

    move-result p0

    return p0
.end method

.method public getTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabListener:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    move-result-object p0

    return-object p0
.end method

.method public getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;
    .locals 0

    return-object p0
.end method

.method public abstract synthetic getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
.end method

.method public getTabWithSameUrlInTabList(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getIntentHandler()Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->getTabWithSameUrlInTabList(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method public getToolbarSwipe()Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    return-object p0
.end method

.method public getTopControlsOffsetYPix()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTopControlsOffsetYPix:F

    return p0
.end method

.method public bridge synthetic getTopMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getVisibleBottomMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleBottomMargin()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getVisibleTopMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleTopMargin()I

    move-result p0

    return p0
.end method

.method public handleNoTabs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewNoTabs:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->handleNoTabs()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    return-void
.end method

.method public hideReadAloudToolbar(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->hideReadAloudToolbar(ZZ)V

    return-void
.end method

.method public initMainViewBookmark()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->init()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    :cond_0
    return-void
.end method

.method public inputUrl()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "si__MainViewLayout"

    const-string v0, "onInputUrl, tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->finishFindOnPage()Z

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->onInputUrl()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onInputUrl()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->hideTopProgressBar()V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x64

    :goto_1
    if-eqz v1, :cond_4

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/I;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/I;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;I)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setFocusUrlBar()V

    :goto_2
    return-void
.end method

.method public isAuthLockScreenShown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->isAuthLockScreenShown()Z

    move-result p0

    return p0
.end method

.method public isBitmapToolbarHidden()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    :goto_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBottomControlsOffsetYPix:F

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTopControlsOffsetYPix:F

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1

    :cond_7
    return v2
.end method

.method public isBookmarkBarContainerShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBookmarkBarContainerShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBookmarkShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsBookmarkShowing:Z

    return p0
.end method

.method public isDecorFitsSystemWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->decorFitsSystemWindows()Z

    move-result p0

    return p0
.end method

.method public isFullScreenCutoutMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->isFullScreenCutoutMode()Z

    move-result p0

    return p0
.end method

.method public isFullScreenNoCutout()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->isFullScreenNoCutout()Z

    move-result p0

    return p0
.end method

.method public isIncognitoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result p0

    return p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsInitialized:Z

    return p0
.end method

.method public isMultiTabClosing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->isMultiTabClosing()Z

    move-result p0

    return p0
.end method

.method public isNativeInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsNativeInitialized:Z

    return p0
.end method

.method public isNewQuickAccessNativePage()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isQuickAccessNativePage()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isReadAloudAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->shouldIncludeReadAloud()Z

    move-result p0

    return p0
.end method

.method public isReadAloudToolbarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->isReadAloudRunning()Z

    move-result p0

    return p0
.end method

.method public isReadArticleAloudToolbarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->isReadArticlesAloudRunning()Z

    move-result p0

    return p0
.end method

.method public isReaderModeInProgress()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->isReaderModeInProgress()Z

    move-result p0

    return p0
.end method

.method public isResultViewShowing()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isSummarizedViewShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadAloudHighlightResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isReadArticleAloudToolbarShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResumed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsResumed:Z

    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isSettingLayout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsSettingLayout:Z

    return p0
.end method

.method public isSummarizedViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->isSummarizedViewShowing()Z

    move-result p0

    return p0
.end method

.method public isTabAnimationRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabAnimationRunning:Z

    return p0
.end method

.method public isTabBarShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabBarShowingWithOneLine()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowingWithOneLine()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabBarShowingWithTwoLine()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowingWithTwoLine()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransBarContainerShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTransBarContainerShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUrlEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isUrlEditMode()Z

    move-result p0

    return p0
.end method

.method public isValidTab(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->isValidTab(I)Z

    move-result p0

    return p0
.end method

.method public isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
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

.method public launchVoiceRecognizer()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->launchVoiceRecognizer()V

    return-void
.end method

.method public loadMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->loadMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object p0

    return-object p0
.end method

.method public notifyCurrentUrlChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyCurrentUrlChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->notifyCurrentUrlChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyLoadingStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public notifyLetterBoxColorChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTheme:Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->notifyLetterBoxColorChanged()V

    return-void
.end method

.method public notifyLoadingStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyLoadingStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyLoadingStatusChanged()V

    return-void
.end method

.method public notifyStatusBarThemeColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTheme:Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mForceStatusbarUpdate:Z

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->notifyStatusBarThemeColorChanged(Z)V

    return-void
.end method

.method public notifyThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->notifyThemeChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->notifyThemeChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->notifyThemeChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUrlEditMode:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->notifyBackgroundColorChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->notifyStatusBarThemeColorChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->notifyLetterBoxColorChanged()V

    return-void
.end method

.method public notifyToolbarHeightChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->notifyToolbarHeightChanged()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->notifyToolbarHeightChanged()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onAttachedToWindow()V

    return-void
.end method

.method public onBottomOffsetsChanged(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mBottomControlsOffsetYPix:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onBottomOffsetsChanged(Landroid/app/Activity;F)V

    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onBottomOffsetsChanged(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->isSIXEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->onOffsetsForFullscreenChanged(FFZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public onCloseTabRequest(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->onCloseTabRequest(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->checkUiModeNightValidation(Landroid/content/res/Configuration;Z)V

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    const v1, 0x7f0b06c4

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->showSmallestDp(Landroid/content/res/Configuration;Landroid/view/ViewStub;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onLayoutModeChanged(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->updateFullScreen()V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isNoTabsShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateWindowMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->onConfigurationChangedFromMainView(Landroid/content/res/Configuration;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateLayout(Landroid/content/res/Configuration;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->dismissBookmarkBarPopup()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->dismissContextMenu()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->updateTabBarContainerVisibility()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->notifyStatusBarThemeColorChanged()V

    :cond_3
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isMainViewShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isNewQuickAccessNativePage()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->forceUpdateStatusBarThemeColor()V

    :cond_4
    return-void
.end method

.method public onContentsLayoutChanged(Landroid/view/MotionEvent;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->scrollToVisibleTab()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->scrollToVisibleTab()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCurrentTabChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isSwipeViewShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->changeMode()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->detectArticleAndUpdateAiButton(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->dismissZoomDialog(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSplitTab:Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->onCurrentTabChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->onCurrentTabChanged(I)V

    :cond_2
    return-void
.end method

.method public onDecorFitsSystemWindowsChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isInfoBarPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/J;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/J;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->unregisterBookmarkListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewBookmark:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onDestroy()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onDestroy()V

    return-void
.end method

.method public onEditModeFinished()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewMedia()Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->onEditModeFinished()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->onUrlEditModeFinished()V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->onEditModeChanged(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUrlEditMode:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->onUrlEditModeFinished()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->onUrlEditModeFinished()V

    return-void
.end method

.method public onEditModeStarted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUrlEditMode:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->onUrlEditModeStarted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->onUrlEditModeStarted()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->dismissEditBookmarkSnackBarIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewMedia()Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->onEditModeStarted()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->onUrlEditModeStarted()V

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->onEditModeChanged(ZZ)V

    return-void
.end method

.method public onFindOnPage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->onFindOnPage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method public onFindOnPageResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->onFindOnPageResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;II)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0a6a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setBackgroundColorToDefault()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v3

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->getTabmanager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getTabDelegate()Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->initialize(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabListener:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->initialize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->initialize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->createHistoryNavigation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->initialize()V

    const v0, 0x7f0b02fe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mContentsLayout:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;->setOnContentLayoutChangeListener(Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mContentsLayout:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;->setContentsLayoutAccessibilityDelegate()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->setBookmarkBarInterface()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBarDelegate()Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBarListener()Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewNoTabs:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBarDelegate()Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setTabBarDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->getTabBarListener()Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setTabBarListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Lcom/sec/android/app/sbrowser/main_view/MainViewReader;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewPreference:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTransBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->getTransBarDelegate()Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setTransBarDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTransBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->getTransBarListener()Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setTransBarListener(Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTheme:Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;-><init>(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSplitTab:Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUrlEditMode:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewKeyEvent:Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;

    return-void
.end method

.method public onHostTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->onHostTabChanged(I)V

    return-void
.end method

.method public onHoverExit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabListener:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->onStatusBubbleHoverExit()V

    return-void
.end method

.method public onInputUrl()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->handleAssistantMenuItemClicked()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->inputUrl()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadAloudHighlightResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->isReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->stopReadAloud()V

    :cond_0
    return-void
.end method

.method public onLaunchMultiTabView()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "si__MainViewLayout"

    const-string v0, "onLaunchMultiTabView, tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->finishFindOnPage()Z

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBottomMargin()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onBottombarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->handleAssistantMenuItemClicked()V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->launchMultiTabStack()V

    return-void
.end method

.method public onLayoutModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSplitTab:Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->onLayoutModeChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateWindowMode()V

    return-void
.end method

.method public onLoadFinished(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onLoadFinished(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->updateAppState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getMainRenderView()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getMainRenderView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->getHeightMeasureSpec(Landroid/view/View;I)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getIntentHandler()Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->configureBottombar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onNativeInitializationSuccess()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->onNativeInitializationSuccess()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTransBar:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->onNativeInitializationSuccess()V

    return-void
.end method

.method public onNativePageEditModeChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->updateHideStatusBar(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->onNativePageEditModeChanged(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTheme:Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mForceStatusbarUpdate:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->notifyStatusBarThemeColorChanged(Z)V

    return-void
.end method

.method public onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->changeMode()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getIntentHandler()Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mLoggingHelper:Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->sendSALoggingForMainViewLaunchMode(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewWindow()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->handleAssistantMenuItemClicked()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    :goto_0
    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->launchNewTab(Z)V

    return-void
.end method

.method public onOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->onTopOffsetsChanged(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->isSIXEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->onOffsetsForFullscreenChanged(FFZLandroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePageVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onToolbarOffsetChanged(Landroid/app/Activity;F)V

    return-void
.end method

.method public onPostInflation(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->initSecretMode(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->onPostInflation()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->registerBookmarkListener()V

    return-void
.end method

.method public onReaderAnimationCleared(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->onReaderAnimationCleared(Z)V

    return-void
.end method

.method public onReaderButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isSavedReaderPage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->showReconnectToOnlinePopup(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onReaderButtonClicked()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->onReaderButtonClicked()V

    return-void
.end method

.method public onReaderOptionButtonClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->onReaderOptionButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public onResultViewVisibilityChanged(Z)V
    .locals 2

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/I;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/I;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveWebPage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSaLoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->recordMoreSavePage(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->savePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "si__MainViewLayout"

    const-string v0, "savePage failed - isNoTabInCurrentMode() is true"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScrollStarted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->onScrollStarted(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isSwipeViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewImmediately()V

    :cond_0
    return-void
.end method

.method public onTabTearingFinished()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabTearingFinished()V

    :cond_0
    return-void
.end method

.method public onTopOffsetsChanged(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTopControlsOffsetYPix:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->onToolbarOffsetsChanged(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->onTopOffsetsChanged(F)V

    return-void
.end method

.method public onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->onMultiTabVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V

    return-void
.end method

.method public onWebContentsCreated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mParentTabForCreateContent:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mParentTabForCreateContent:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public openInSecretMode(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->openInSecretMode(Ljava/lang/String;)V

    return-void
.end method

.method public openInSecretModeIfRequired()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->openInSecretModeIfRequired()V

    return-void
.end method

.method public openSecretModeForFile()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->openSecretModeForFile()V

    return-void
.end method

.method public removeOnDragListenerToContentView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->removeOnDragListener()V

    :cond_1
    :goto_0
    return-void
.end method

.method public reopenClosedTab()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->reopenClosedTab()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->loggingReopenClosedTab()V

    return-void
.end method

.method public requestUrlEditMode(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUrlEditMode:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->requestUrlEditMode(Landroid/view/View;)V

    return-void
.end method

.method public restoreReadAloudToolbar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->showReadAloudToolbar()V

    return-void
.end method

.method public runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    return-void
.end method

.method public savePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->savePage()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->savePage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public savePageUtilityCheck()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->savePageUtilityCheck()Z

    move-result p0

    return p0
.end method

.method public scrollToVisibleTab()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->scrollToCurrentTabButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->sendUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setBackgroundColorToDefault()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->getBackgroundColor()I

    move-result v0

    const v1, 0x7f0b0a6a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBookmarkBarInterface()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->setBookmarkBarInterface(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V

    return-void
.end method

.method public setBookmarkShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsBookmarkShowing:Z

    return-void
.end method

.method public setContentView(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 1

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSaLoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->setSaLoggingDelegate(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->initWeChatHelper(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewTabManager:Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public setForceStatusBarUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mForceStatusbarUpdate:Z

    return-void
.end method

.method public abstract synthetic setFullscreenImmersiveMode(Z)V
.end method

.method public setInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsInitialized:Z

    return-void
.end method

.method public setIsClearDisplayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsClearDisplayed:Z

    return-void
.end method

.method public abstract synthetic setMediaSessionUrl(Landroid/content/Intent;)V
.end method

.method public abstract synthetic setNightModeEnabled(Z)V
.end method

.method public abstract synthetic setSaveInstanceState(Z)V
.end method

.method public setSecretModeEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->setSecretModeEnabled(Z)V

    return-void
.end method

.method public setSettingLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsSettingLayout:Z

    return-void
.end method

.method public setTabRestored(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabRestored:Z

    return-void
.end method

.method public shouldEnableCustomHeader()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->shouldEnableCustomHeader()Z

    move-result p0

    return p0
.end method

.method public shouldOpenLinksInSecretMode(Landroid/content/Intent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->shouldOpenLinksInSecretMode(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public showNoTabsInMultiTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewMultiTab:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->showNoTabs()V

    :cond_0
    return-void
.end method

.method public showNoTabsMoreMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewNoTabs:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->showNoTabsMoreMenu()Z

    move-result p0

    return p0
.end method

.method public startFindOnPage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewFindOnPage:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->startFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public stopReadAloud()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->stopReadAloud()V

    return-void
.end method

.method public toggleSecretMode()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewSecret:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->toggleSecretMode()V

    return-void
.end method

.method public updateAssistantMenuIfNecessary()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->updateAssistantMenuIfNecessary()V

    return-void
.end method

.method public updateCustomHeader(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateCustomHeader(Z)V

    return-void
.end method

.method public updateDecorFitsSystemWindows()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    return-void
.end method

.method public updateFullScreen()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isFullscreenVideoMode()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isFullScreenNoCutout()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isFullScreenForDisplayCutoutMode()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setFullScreen(Landroid/view/Window;Z)V

    :goto_1
    return-void
.end method

.method public updateMainViewBookmark()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    return-void
.end method

.method public updateTabBarContainerVisibility()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabBarVisibilityChanged:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTabBarVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->notifyToolbarHeightChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->updateHandwritingBoundsOffsets()V

    return-void
.end method

.method public updateTouchIcon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getMainViewBookmark()Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->updateTouchIcon(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewConnectivity:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->sendLinkToWindowDataIfNeeded()V

    return-void
.end method

.method public waitingForBitmapManager(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->waitingForBitmapManager(Ljava/lang/Runnable;)V

    return-void
.end method

.method public waitingForTabRestore(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->waitingForTabRestore(Ljava/lang/Runnable;)V

    return-void
.end method
