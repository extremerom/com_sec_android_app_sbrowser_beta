.class public Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

.field private mContext:Landroid/content/Context;

.field private final mFullscreenToastHandler:Landroid/os/Handler;

.field private mLoadedFromAssistIntent:Z

.field private mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mNetworkErrorHandler:Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;

.field private mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mNotificationToast:Landroid/view/View;

.field private mNotificationToastTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mNotificationToastVisibility:Z

.field private mStatusBubble:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

.field protected mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

.field mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mStatusBubble:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mFullscreenToastHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isFindOnPageRunning()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isResumed()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isTabBarShowing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isTransBarContainerShowing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->notifyLoadingStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static bridge synthetic J(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->notifyThemeColorChanged()V

    return-void
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->onTransbarNotifyUrlChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic L(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->showFullScreenToast(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static bridge synthetic M(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->showPromotionBannerIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic N(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->updateOptionMenuBadgeVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->lambda$initializeBitmapManagerIfNeeded$3()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->lambda$showPromotionBannerIfNeeded$2(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method private bringApplicationToFront()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to bring Internet App to Foreground: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "si__MainViewTabListener"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->lambda$hideFullscreenToast$1(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private captureBitmapIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isCurrentActivityVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isBitmapCaptureDelayed()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsBitmapCaptureDelayed(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[captureBitmapIfNeeded] OnLoadFinished calling captureTabAsync - target tab : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__MainViewTabListener"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabLaunchType()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromSplitView()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v3, p1, v2, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eq p1, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0, v3, p1, v2, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isMultiTabShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0, v3, p1, v2, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->lambda$showFullScreenToast$0(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private finishFindOnPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishFindOnPage()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mFullscreenToastHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    return-object p0
.end method

.method private getOptionMenuBadgeCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getOptionMenuBadgeCount()I

    move-result p0

    return p0
.end method

.method private getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object p0

    return-object p0
.end method

.method private getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method private getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mLoadedFromAssistIntent:Z

    return p0
.end method

.method private hideFullscreenToast(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToast:Landroid/view/View;

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

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/T;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/T;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    return-object p0
.end method

.method private initializeBitmapManagerIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/b;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isBookmarkBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isBookmarkBarContainerShowing()Z

    move-result p0

    return p0
.end method

.method private isFindOnPageRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result p0

    return p0
.end method

.method private isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

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

.method private isResumed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isResumed()Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private isTabBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabBarShowing()Z

    move-result p0

    return p0
.end method

.method private isTransBarContainerShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTransBarContainerShowing()Z

    move-result p0

    return p0
.end method

.method private isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNetworkErrorHandler:Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-object p0
.end method

.method private synthetic lambda$hideFullscreenToast$1(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToast:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToast:Landroid/view/View;

    return-void
.end method

.method private synthetic lambda$initializeBitmapManagerIfNeeded$3()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstanceId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->initializeBitmapManagerIfNeeded(I)V

    return-void
.end method

.method private synthetic lambda$showFullScreenToast$0(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->hideFullscreenToast(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$showPromotionBannerIfNeeded$2(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeverShowBanner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->getInstance()Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->showPromotionBannerIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->showPromotionIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mLoadedFromAssistIntent:Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNetworkErrorHandler:Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;

    return-void
.end method

.method private notifyLoadingStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyLoadingStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private notifyThemeColorChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyThemeColorChanged()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->bringApplicationToFront()V

    return-void
.end method

.method private onTransbarNotifyUrlChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLaunchedFromSplitView()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->notifyCurrentUrlChanged(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->captureBitmapIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->finishFindOnPage()Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private showFullScreenToast(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToast:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToastTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToastVisibility:Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isShowCutoutCameraTurnedOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e021e

    invoke-virtual {v1, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToast:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToast:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToast:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToast:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToast:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/T;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/T;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Landroid/view/ViewGroup;I)V

    const-wide/16 p0, 0x5dc

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private showPromotionBannerIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getOptionMenuBadgeCount()I

    move-result p0

    return p0
.end method

.method private updateOptionMenuBadgeVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateOptionMenuBadgeVisibility(I)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->initializeBitmapManagerIfNeeded()V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->isBookmarkBarShowing()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    return-object p0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mStatusBubble:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mStatusBubble:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    return-void
.end method

.method public onStatusBubbleCurrentTabChanged(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mStatusBubble:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->onCurrentTabChanged(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStatusBubbleHoverExit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mStatusBubble:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->hide()V

    :cond_0
    return-void
.end method

.method public onStatusBubbleProgressChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;D)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mStatusBubble:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, p2, v0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mStatusBubble:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->hide()V

    :cond_1
    return-void
.end method

.method public onStatusBubbleUpdateTargetUrl(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mStatusBubble:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->updateStatusDisplay(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToastVisibility:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToastVisibility:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mNotificationToastTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-ne v0, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->showFullScreenToast(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_1
    return-void
.end method

.method public setLoadedFromAssistIntent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mLoadedFromAssistIntent:Z

    return-void
.end method

.method public setMainActivityListener(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    return-void
.end method
