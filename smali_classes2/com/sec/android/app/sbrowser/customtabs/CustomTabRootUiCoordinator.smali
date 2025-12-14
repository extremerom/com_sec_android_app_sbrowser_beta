.class public Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventProvider;
.implements Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/BrowserControlsSizer;


# instance fields
.field private final mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

.field private mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

.field private mBottombarDelegate:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

.field private mCustomTabHeightStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

.field private mEnterFullscreen:Z

.field private mFindOnPage:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

.field private final mFullscreenToastHandler:Landroid/os/Handler;

.field private mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

.field private mIsBottombar:Z

.field private mNotificationToast:Landroid/view/View;

.field private mNotificationToastTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

.field private mNotificationToastVisibility:Z

.field private mPrivacyInfoDialog:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

.field private mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

.field private mToolbarCoordinator:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;

.field private mToolbarDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

.field private mToolbarListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

.field private mTopControlsOffsetYPix:F

.field private final mTouchEventObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mTouchEventObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFullscreenToastHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventProvider;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->lambda$onPreInflationStartup$0()Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventProvider;

    move-result-object p0

    return-object p0
.end method

.method private addBookmark()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isInvalidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;->ADD_BOOKMARK_DIRECTLY:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;

    invoke-static {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->bookmarkAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    return-void
.end method

.method private addBookmarkBar()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isInvalidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;->ADD_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;

    invoke-static {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->bookmarkAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->lambda$showFullScreenNotification$3(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method private createFindOnPageDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    return-object v0
.end method

.method private createFindOnPageListener()Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$6;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    return-object v0
.end method

.method private createHideToolbarDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    return-object v0
.end method

.method private createOnReadArticlesAloudCallback()Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/m;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/m;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    return-object v0
.end method

.method private createToolbarDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    return-object v0
.end method

.method private createToolbarListener()Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbarListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbarListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->lambda$initializeToolbar$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private disableBottomBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mIsBottombar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mIsBottombar:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->forceCaptureBottomBar()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->lambda$createOnReadArticlesAloudCallback$5(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->showFullScreenNotification()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->lambda$initializeToolbar$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    return-object p0
.end method

.method private getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->lambda$hideFullscreenToast$4(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private hideFullscreenToast(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToast:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/customtabs/l;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    return-object p0
.end method

.method private isInvalidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

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

.method private isNoUiMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isNoUiMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mIsBottombar:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    return-object p0
.end method

.method private synthetic lambda$createOnReadArticlesAloudCallback$5(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isExtraLaunchWithReadArticlesAloud()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createOnReadArticlesAloudCallback(): minimize => "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabRootUiCoordinator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->requestUpdateReadAloudToolbar(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$hideFullscreenToast$4(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToast:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToast:Landroid/view/View;

    return-void
.end method

.method private synthetic lambda$initializeToolbar$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p3, p7, :cond_0

    if-ne p5, p9, :cond_0

    if-ne p2, p6, :cond_0

    if-eq p4, p8, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->postCaptureTopBar()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initializeToolbar$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p3, p7, :cond_0

    if-ne p5, p9, :cond_0

    if-ne p2, p6, :cond_0

    if-eq p4, p8, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->postCaptureBottomBar()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPreInflationStartup$0()Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventProvider;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$showFullScreenNotification$3(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->hideFullscreenToast(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private launchVoiceRecognizer()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;->launch(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mTopControlsOffsetYPix:F

    return p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    return-object p0
.end method

.method private openInInternet()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isInvalidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isNoUiMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->launchVoiceRecognizer()V

    return-void
.end method

.method private requestFocus()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->requestFocus()V

    return-void
.end method

.method private runMenuItem(Landroid/view/MenuItem;)Z
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isInvalidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getMenuTitles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v4, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->clickMenuItemWithUrlAndTitle(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b039e

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->goForwardIfPossible()V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b03a3

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->reload()V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b03a4

    if-ne v1, v3, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->share()V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b039b

    if-ne v1, v3, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->addBookmark()V

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b039a

    if-ne v1, v3, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->addBookmarkBar()V

    goto :goto_1

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b039d

    if-ne v1, v3, :cond_8

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onFindOnPage(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b039c

    if-ne v1, v3, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->getOrCreateInstance()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getMenuAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->setAnchor(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->addShortcut()V

    goto :goto_1

    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b03a2

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->openInInternet()V

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getScreenID()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_CUSTOMTABS_MORE:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_a
    return v2
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->requestFocus()V

    return-void
.end method

.method private share()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isInvalidTab(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->bringToFront()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method private showFullScreenNotification()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToast:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToastTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToastVisibility:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v3

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    sub-int/2addr v2, v3

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e021e

    invoke-virtual {v3, v6, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToast:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToast:Landroid/view/View;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setY(F)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToast:Landroid/view/View;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0705b7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToast:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToast:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/customtabs/l;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/sec/android/app/sbrowser/customtabs/l;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Landroid/view/ViewGroup;I)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private showPageInfo()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mPrivacyInfoDialog:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    new-instance v2, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getScreenID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mPrivacyInfoDialog:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mPrivacyInfoDialog:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getSecurityIcon()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->setAnchor(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mPrivacyInfoDialog:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->show()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->runMenuItem(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->share()V

    return-void
.end method

.method private updateCustomButton(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbarCoordinator:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->updateCustomButton(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->showPageInfo()V

    return-void
.end method


# virtual methods
.method public addTouchEventObserver(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mTouchEventObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public finishFindOnPage()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isFindOnPageRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFindOnPage:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->finishFindOnPage()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->finishFindOnPage()V

    return-void
.end method

.method public getBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;->getVisibleHeight()I

    move-result p0

    return p0
.end method

.method public getTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getVisibleHeight()I

    move-result p0

    return p0
.end method

.method public getVisibleTopMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isBitmapToolbarHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public handleCloseAnimation(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mCustomTabHeightStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->handleCloseAnimation(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    const p1, -0x7fffffe2

    if-eq v0, p1, :cond_4

    const p1, -0x7fffffd7

    if-eq v0, p1, :cond_2

    const/16 p1, 0x52

    if-eq v0, p1, :cond_2

    const/16 p1, 0x87

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->requestFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->reload()V

    :cond_1
    return v2

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->requestFocus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->openOptionMenu()Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->requestFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isMainFrameLoading()Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->addBookmark()V

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public hideBrowserControls()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->disableHideToolbar(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void
.end method

.method public initializeToolbar()V
    .locals 11

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->shouldShowBottomBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mIsBottombar:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    const v1, 0x7f0b03a9

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createToolbarDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setDelegate(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createToolbarListener()Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setListener(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->initializeLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/k;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/BrowserControlsSizer;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mBottombarDelegate:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->showBottomBarIfNecessary()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mBottombarDelegate:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getBottomBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/k;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createHideToolbarDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbarListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/sec/android/app/sbrowser/customtabs/c;

    const/4 v2, 0x4

    invoke-direct {v10, v2, v1}, Lcom/sec/android/app/sbrowser/customtabs/c;-><init>(ILjava/lang/Object;)V

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabCloseClickHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbarCoordinator:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isNoUiMode()Z

    move-result v0

    const-string v1, "CustomTabRootUiCoordinator"

    if-eqz v0, :cond_0

    const-string v0, "initializeToolbar(): isNoUiMode -> true"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mIsBottombar:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->hideBrowserControls()V

    goto :goto_0

    :cond_0
    const-string v0, "initializeToolbar(): isNoUiMode -> false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->forceCaptureTopBar()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mIsBottombar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->forceCaptureBottomBar()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mCustomTabHeightStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getPartialTabToolbarCornerRadius()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->onToolbarInitialized(Landroid/view/View;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbarCoordinator:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->onToolbarInitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getCloseButtonPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setCloseButtonPosition(I)V

    return-void
.end method

.method public isBitmapToolbarHidden()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mTopControlsOffsetYPix:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isFindOnPageRunning()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFindOnPage:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "CustomTabRootUiCoordinator"

    const-string v1, "onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x68

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFindOnPage:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;->toResult(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V

    :cond_0
    const/16 p3, 0x946

    if-ne p1, p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onStartConsentActivityResult(I)V

    return-void

    :cond_1
    const/16 p3, 0x947

    if-ne p1, p3, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onStartAddSamsungAccountResult(I)V

    return-void

    :cond_2
    const/16 p3, 0x948

    if-ne p1, p3, :cond_3

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onSAConsentResult(I)V

    return-void

    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->isRequestCodeForShare(I)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->onActivityResult(II)V

    :cond_4
    return-void
.end method

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onContentViewSizeChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isContentResized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->hideReadAloudToolbar(ZZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->restoreReadAloudToolbar()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mCustomTabHeightStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->destroy()V

    :cond_0
    return-void
.end method

.method public onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    return-void
.end method

.method public onDidNavigateMainFrame()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onDidNavigateMainFrame()V

    return-void
.end method

.method public onFindOnPage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFindOnPage:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->startFindOnPage(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->startFindOnPage()V

    return-void
.end method

.method public onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->isFinalUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFindOnPage:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CustomTabRootUiCoordinator"

    const-string v1, "onFindResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFindOnPage:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->getNumberOfMatches()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->getActiveMatchOrdinal()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->setFindResult(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFindToolbarHidden()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mCustomTabHeightStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->onFindToolbarHidden()V

    return-void
.end method

.method public onFindToolbarShown()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mCustomTabHeightStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->onFindToolbarShown()V

    return-void
.end method

.method public onLoadFailed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onLoadFailed()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateProgressBar(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->update()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->postCaptureTopBar()V

    return-void
.end method

.method public onLoadFinished()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onLoadFinished()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateProgressBar(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->update()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->postCaptureTopBar()V

    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateProgressBar(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->update()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->postCaptureTopBar()V

    return-void
.end method

.method public onLoadStarted()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->finishFindOnPage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onLoadStarted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateProgressBar(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->update()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->postCaptureTopBar()V

    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mTopControlsOffsetYPix:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onOffsetsForFullscreenChanged(FF)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mEnterFullscreen:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavBarVisibility(Landroid/content/Context;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPostInflationStartup()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mCustomTabHeightStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->onPostInflationStartup()V

    const-string p0, "CustomTabRootUiCoordinator"

    const-string v0, "onPostInflationStartup()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreInflationStartup()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    new-instance v2, Lcom/sec/android/app/sbrowser/customtabs/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/customtabs/j;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/customtabs/j;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/customtabs/j;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createOnReadArticlesAloudCallback()Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->createStrategy(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Z)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mCustomTabHeightStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    const-string p0, "CustomTabRootUiCoordinator"

    const-string v0, "onPreInflationStartup()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createToolbarDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setDelegate(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createToolbarListener()Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setListener(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->update()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->postCaptureTopBar()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onResume()V

    return-void
.end method

.method public onSAConsentResult(I)V
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->setIgnoreConsent()V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_SUCCESS_LIST_NON_MANDATORY_OR_EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->updateConsentStatus(I)V

    :cond_0
    return-void
.end method

.method public onStartAddSamsungAccountResult(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    :cond_0
    return-void
.end method

.method public onStartConsentActivityResult(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->setUserConsent(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onStop()V

    return-void
.end method

.method public onTabHidden()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onTabHidden()V

    return-void
.end method

.method public onTabShown()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFindOnPage:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createFindOnPageDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createFindOnPageListener()Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFindOnPage:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onShow()V

    return-void
.end method

.method public onTakeFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->onTakeFocus(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onTakeFocus()Z

    return-void
.end method

.method public onTalkBackStatusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onTalkBackStatusChanged(Z)V

    return-void
.end method

.method public onThemeColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateVisualsForState()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->postCaptureTopBar()V

    return-void
.end method

.method public onToggleFullscreenModeForTab(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mEnterFullscreen:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateVisualsForState()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->postCaptureTopBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->updateFullscreenStatus(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarVisible(Landroid/content/Context;Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onToggleFullscreenModeForTab(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFullscreenToastHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mFullscreenToastHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onUiModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->hideBrowserControls()V

    :cond_0
    return-void
.end method

.method public onUpdateTitle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateDisplayedTitle()V

    :cond_0
    return-void
.end method

.method public onUpdateUrl()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateDisplayedTitle()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->onWindowFocusChanged(Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToastVisibility:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToastVisibility:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mNotificationToastTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->showFullScreenNotification()V

    :cond_1
    return-void
.end method

.method public removeTouchEventObserver(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mTouchEventObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBottomControlsHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBottomControlsHeight(I)V

    return-void
.end method

.method public showBrowserControls()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isNoUiMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mHideToolbarManager:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->enableHideToolbar(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void
.end method

.method public updateCustomButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getButtonParamsForId(I)Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->update(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->showOnToolbar()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->updateCustomButton(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mBottombarDelegate:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->updateBottomBarButtons(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public updateRemoteView(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mBottombarDelegate:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->disableBottomBar()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->mBottombarDelegate:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->updateRemoteViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method
