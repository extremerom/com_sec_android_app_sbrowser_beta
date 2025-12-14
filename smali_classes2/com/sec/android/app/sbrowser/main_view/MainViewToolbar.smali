.class public Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

.field private mBookmarkBarDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

.field private mBookmarkBarEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

.field private mBookmarkBarListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

.field private mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

.field private final mBottombarListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

.field private final mContext:Landroid/content/Context;

.field private final mLocationBarEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

.field private final mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mPrivacyInfoDialog:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

.field private final mSwipeDelegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

.field private mTabBarDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

.field private mTabBarListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

.field private final mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

.field private final mToolbarListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

.field private mTransBarDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

.field private mTransBarListener:Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mLocationBarEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombarListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mSwipeDelegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isInToolbarArea(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isTabBarShowingWithTwoLine()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isTranslationBarShowing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->performToolbarButtonClick(ILandroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->performToolbarButtonLongClick(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBookmarkBarDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    return-object p0
.end method

.method private checkTab()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private checkToolBar()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTopControlsOffsetYPix()F

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBottomControlsOffsetYPix()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBookmarkBarEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBookmarkBarListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    return-object p0
.end method

.method private getContentLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    return-object p0
.end method

.method private getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method private getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method private getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method private hideCloseAllTabsDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->dismissCloseAllTabsDialog()V

    return-void
.end method

.method private hidePrivacyInfoDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mPrivacyInfoDialog:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->dismissDialog()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mPrivacyInfoDialog:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    return-object p0
.end method

.method private isAddressBarInBottom()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isMobileLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInArea(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    const/4 v1, 0x0

    aget v2, p0, v1

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float v2, p0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p0

    int-to-float p0, p1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private isInBottomBarArea(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isInArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isInToolbarArea(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getOuterLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isInArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isMainViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result p0

    return p0
.end method

.method private isNativeInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNativeInitialized()Z

    move-result p0

    return p0
.end method

.method private isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private isTabBarShowingWithTwoLine()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabBarShowingWithTwoLine()Z

    move-result p0

    return p0
.end method

.method private isTranslationBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTransBarContainerShowing()Z

    move-result p0

    return p0
.end method

.method private isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabBarDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabBarListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTransBarDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-object p0
.end method

.method private notifyReadHighlightsAloudStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyReadHighlightsAloudStatusChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyReadHighlightsAloudStatusChanged()V

    return-void
.end method

.method private notifyStatusBarThemeColorChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyStatusBarThemeColorChanged()V

    return-void
.end method

.method private notifySummarizeStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifySummarizeStatusChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifySummarizeStatusChanged()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTransBarListener:Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mPrivacyInfoDialog:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    return-void
.end method

.method private performToolbarButtonClick(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->performToolbarButtonClick(ILandroid/view/View;)V

    return-void
.end method

.method private performToolbarButtonLongClick(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->performToolbarButtonLongClick(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->checkTab()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->checkToolBar()Z

    move-result p0

    return p0
.end method

.method private runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/widget/FrameLayout;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private updateAppIconBadgeVisibility(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    const-string v1, "last_badge_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    const-string v2, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-static {v2}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "badge_count_package_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "badge_count_class_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "badge_count"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateBrowsingAssistButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateBrowsingAssistButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBrowsingAssistButton()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isInBottomBarArea(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addTopProgressbar(Landroid/view/ViewGroup;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSavedReaderPage()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isBitmapToolbarHidden()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-nez v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setTopProgressDrawable()V

    goto :goto_1

    :cond_3
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public cancelBrowsingAssistAnimationIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->cancelBrowsingAssistAnimationIfNeeded()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->cancelBrowsingAssistAnimationIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method public createHistoryNavigation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->createHistoryNavigation()V

    return-void
.end method

.method public dismissPopup()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->hidePrivacyInfoDialog()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->hideCloseAllTabsDialog()V

    return-void
.end method

.method public getBottomMargin()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getVisibleHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getVisibleHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getVisibleHeight()I

    move-result p0

    add-int/2addr p0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isDecorFitsSystemWindow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getVisibleHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    return-object p0
.end method

.method public getFixedBottombarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07023a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getFixedToolbarHeight()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTransBarContainerShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071646

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public getSwipeDelegate()Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mSwipeDelegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    return-object p0
.end method

.method public getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-object p0
.end method

.method public initialize(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d77

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setDelegate(Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->setListener(Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setNewTabHandler(Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setMainViewInterface(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mLocationBarEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setEventListener(Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombarListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->initialize(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->setToolbar(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->setBottombar(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    return-void
.end method

.method public isInBottomBarArea(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1    # Landroid/view/DragEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_1
    move p0, v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    :goto_2
    int-to-float p0, p0

    add-float/2addr p1, p0

    aget p0, v2, v1

    int-to-float v4, p0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, p0

    int-to-float p0, v4

    cmpl-float p0, v3, p0

    if-lez p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 p0, 0x1

    aget v2, v2, p0

    int-to-float v3, v2

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    goto :goto_3

    :cond_7
    return p0

    :cond_8
    :goto_3
    return v1
.end method

.method public isInToolbarArea(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1    # Landroid/view/DragEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getOuterLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_1
    move p0, v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    :goto_2
    int-to-float p0, p0

    add-float/2addr p1, p0

    aget p0, v2, v1

    int-to-float v4, p0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, p0

    int-to-float p0, v4

    cmpl-float p0, v3, p0

    if-lez p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 p0, 0x1

    aget v2, v2, p0

    int-to-float v3, v2

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    goto :goto_3

    :cond_7
    return p0

    :cond_8
    :goto_3
    return v1
.end method

.method public isMoreMenuLeft()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isAddressBarInBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isToolbarItemLeft(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->isMoreMenuLeft()Z

    move-result p0

    return p0
.end method

.method public isReaderProgressDialogVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isReaderProgressVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUrlEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p0

    return p0
.end method

.method public notifyMultiWindowModeChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isMainViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isNoTabsShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isHideStatusBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->notifyStatusBarThemeColorChanged()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateAllButtonStatus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->onMultiWindowModeChanged(Z)V

    :cond_2
    return-void
.end method

.method public notifyThemeChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->shouldShowBottomBarShadow()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    return-void
.end method

.method public notifyTransBarOffsetsForFullscreenChanged(FFZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyTransBarOffsetsForFullscreenChanged(FFZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->clearBottombarButtons()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->clearToolbarButtons()V

    :cond_1
    return-void
.end method

.method public onMyanmarFontChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onMyanmarFontChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onMyanmarFontChanged()V

    return-void
.end method

.method public onNightModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onNightModeChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onNightModeChanged()V

    return-void
.end method

.method public onOffsetsForFullscreenChanged(FFZLandroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->notifyTransBarOffsetsForFullscreenChanged(FFZ)V

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->addTopProgressbar(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onPcVersionChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onPcVersionChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onPcVersionChanged()V

    return-void
.end method

.method public onReaderModeCanceled()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->forceCapture()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->forceCapture()V

    :cond_0
    return-void
.end method

.method public onReadyToSetSearchEngine()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->initSearchEnginePopup()V

    return-void
.end method

.method public onSplitModeStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onSplitModeStatusChanged()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onSplitModeStatusChanged()V

    :cond_1
    return-void
.end method

.method public requestFocusWithKeyboard()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->requestFocusWithKeyboard()V

    return-void
.end method

.method public setAppMenu(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->setAppMenu(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;)V

    return-void
.end method

.method public setBookmarkBarDelegate(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBookmarkBarDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    return-void
.end method

.method public setBookmarkBarEmptyListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBookmarkBarEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    return-void
.end method

.method public setBookmarkBarListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBookmarkBarListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    return-void
.end method

.method public setFocusUrlBarForSearch()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setFocusUrlBarForSearch()V

    return-void
.end method

.method public setLastClickedTime()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->setLastClickedTime()V

    return-void
.end method

.method public setTabBarDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabBarDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    return-void
.end method

.method public setTabBarListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTabBarListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    return-void
.end method

.method public setTransBarDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTransBarDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-void
.end method

.method public setTransBarListener(Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mTransBarListener:Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;

    return-void
.end method

.method public shouldShowBottomBarShadow()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isScrollBottomReached()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public showReconnectToOnlinePopup(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->showReconnectToOnlinePopup(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateAiButtonStatus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->dismissAIViews(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateBrowsingAssistButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->notifySummarizeStatusChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->notifyReadHighlightsAloudStatusChanged()V

    return-void
.end method

.method public updateCutOutMarginsVisibilityIfNeeded()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isNativeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->hasLayoutFullscreenFlag(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    :cond_1
    return-void
.end method

.method public updateHistoryNaviAnchorView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbarEventHandler:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->updateHistoryNaviAnchorView()V

    return-void
.end method

.method public updateLocationBarForAssistIntent()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->dismissReconnectToOnlinePopup()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocusUrlBar()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->requestFocusWithKeyboard()V

    return-void
.end method

.method public updateOptionMenuBadgeVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateOptionMenuBadgeVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateOptionMenuBadgeVisibility(I)V

    :cond_1
    :goto_0
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateAppIconBadgeVisibility(I)V

    return-void
.end method

.method public updateSearchEnginesFavicon()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->updateSearchEnginesFavicon()V

    return-void
.end method

.method public updateToolbarButtons()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarButtons()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBottombarButtons()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->isUrlEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->enableBottomBarButtons(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateToolbarButtonsVisibility()V

    return-void
.end method

.method public updateToolbarButtonsVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->refreshBookmarkBarDataSet()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateTabBarContainerVisibility()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyMultiTabCountChanged()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getOptionMenuBadgeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateOptionMenuBadgeVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateHistoryNaviAnchorView()V

    return-void
.end method
