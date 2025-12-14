.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->lambda$onToggleFullscreenModeForTab$1(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->lambda$onReaderModeFailed$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->lambda$onShow$2(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->lambda$onNativePageVisibilityChanged$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private getSchedulerParams()Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;)V

    return-object v0
.end method

.method private synthetic lambda$onNativePageVisibilityChanged$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->H(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->applyReaderOption(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onReaderModeFailed$3()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->cancelReaderMode()V

    return-void
.end method

.method private synthetic lambda$onShow$2(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->H(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->applyReaderOption(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onToggleFullscreenModeForTab$1(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFullscreenVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->L(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private updateExtraBar(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTabBarVisibility(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->F(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->enableTabBarContainer(Z)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateBookmarkBarVisibility(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->z(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->enableBookmarkBar(Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->G(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->enableTransBar(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public activateContents(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->E(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setSecretModeEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->activateContents(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->o(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    :cond_1
    return-void
.end method

.method public onBackForwardUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyBackForwardStatusChanged()V

    return-void
.end method

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    return-void
.end method

.method public onBookmarkStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyBookmarkStatusChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V

    return-void
.end method

.method public onBottombarShadowVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    return-void
.end method

.method public onBottombarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onBottombarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    return-void
.end method

.method public onCloseTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->B(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onCloseTabRequest(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->E(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isIncognitoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getIncognitoTabCount()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getNormalTabCount()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadHomePage()V

    :cond_4
    return-void
.end method

.method public onContentHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->onContentHeightChanged()V

    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onContentViewSizeChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isContentResized()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isKeyboardOrClipboardShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->restoreReadAloudToolbar()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->hideReadAloudToolbar(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onContentViewTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->onContentViewTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "si__MainViewTabListener"

    const-string p1, "onContentsZoomChange, current tab is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->changeZoomValue(ZLandroid/view/View;)V

    return-void
.end method

.method public onContextMenuShown()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_WEB_LINK:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onPopupMenuShown(Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;)V

    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->onStatusBubbleCurrentTabChanged(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->onCurrentTabChanged()V

    return-void
.end method

.method public onDeepLinkStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyDeepLinkStatusChange()V

    return-void
.end method

.method public onDidAccessInitialDocument()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setUrlToEditText(Ljava/lang/String;Z)V

    return-void
.end method

.method public onDidChangeThemeColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToSaveQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyThemeChanged()V

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;JZLjava/lang/String;I)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isSupport(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyLoadingStatusChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldShowBottomBarShadow()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    :cond_2
    return-void
.end method

.method public onDidNavigateMainFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->u(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->N(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onDidNavigateMainFrame(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onHostTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onDragEntered()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->H(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onDragEntered()V

    return-void
.end method

.method public onExtractionSuccess(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onExtractionSuccess()V

    return-void
.end method

.method public onFindOnPage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onFindOnPage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method public onFindOnPageResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onFindOnPageResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;II)V

    return-void
.end method

.method public onHoverExit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->onStatusBubbleHoverExit()V

    return-void
.end method

.method public onLoadFailed(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ILjava/lang/String;)V
    .locals 2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->D(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;-><init>()V

    invoke-static {p3, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;)V

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->handleNetworkError(I)V

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setProgress(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->I(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->u(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->N(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onLoadFailed(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onLoadFailed()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onLoadFailed()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->enableAddBookmarkButton(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->isInternetDisconnected(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTransBarVisibility(Z)V

    :cond_2
    return-void
.end method

.method public onLoadFinished(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdateAtLoadFinishedIfAvailable(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->requestFocusWithKeyboard()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->C(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setProgress(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTextFieldBackgroundVisibility()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->I(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->u(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->N(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->p(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->M(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->y(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onLoadFinished()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->getInstance()Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->getSchedulerParams()Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->triggerScheduledLogging(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->onLoadFinished()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result v1

    if-nez v1, :cond_3

    if-eq p1, v0, :cond_4

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->loadFinished(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onLoadFinished()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->enableAddBookmarkButton(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->sendUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    if-ne p1, v0, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->detectArticleAndUpdateAiButton(Z)V

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateTaskDescriptionIfNeeded()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onLoadFinished(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onLoadFinished()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->performSixPkgUpdateIfNeeded()V

    return-void
.end method

.method public onLoadStarted(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->hideSplashScreenIfNeeded()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v1, "si__MainViewTabListener"

    if-nez v0, :cond_1

    const-string p0, "OnLoadStarted, currentTab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eq p1, v0, :cond_2

    const-string p0, "OnLoadStarted, tab != currentTab"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "------------ OnLoadStarted isSameDocument : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getIsSameDocument()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getIsSameDocument()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->q(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onLoadStarted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->hideTopProgressBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setLoadStartProgress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->I(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyReaderStatusChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyReaderStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->E(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->removeFromBlockList(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeverShowBanner(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->getInstance()Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->dismissInfoBarIfNeeded()V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->loadStarted(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onLoadStarted()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setIsClearDisplayed(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->initSwipeTabPaging()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->enableAddBookmarkButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onLoadStarted()V

    return-void
.end method

.method public onNativePageEditModeChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onNativePageEditModeChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    return-void
.end method

.method public onNativePageIsReady(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->hideSplashScreenIfNeeded()V

    return-void
.end method

.method public onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiButtonStatus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->u(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->N(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->I(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->J(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setProgress(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V

    xor-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setAccessibilityEnabled(Z)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/U;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/U;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    const-wide/16 p0, 0xa

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public onNotifyClearDisplay(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setIsClearDisplayed(Z)V

    return-void
.end method

.method public onNotifyPageReload(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->F(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->scrollToCurrentTabButton()V

    :cond_0
    return-void
.end method

.method public onOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public onPWAStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onPWAStatusChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyPWAModeChanged()V

    return-void
.end method

.method public onPageSavedAs(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string p1, "si__MainViewTabListener"

    const-string p2, "tab is not currentTab"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->setSaveWebPageRunning(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0, p2, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->onPageSavedAs(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onProgressChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;D)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->onStatusBubbleProgressChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;D)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-ne p1, v0, :cond_5

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "------------ progress : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewTabListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isAboutBlankUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p2, v0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpg-double p1, p2, v0

    if-gez p1, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    double-to-int p1, p2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setProgress(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onReaderModeFailed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReaderPageVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReaderPageVisibilityChanged - visible : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewTabListener"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->updateReaderProgressStatus(Z)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->disableDefaultFontSize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/StatusUtil;->isSavedPageRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onReaderPageVisibilityChanged - while saving reader tab"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->onCancel(Landroid/content/Context;)V

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSelectActionModeShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didRemoveVisionTextView()Z

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didRemoveObjectCaptureView()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyReaderStatusChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->u(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->N(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyReaderStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->J(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onReaderPageVisibilityChanged(Z)V

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->showInfoBar()V

    :cond_4
    xor-int/lit8 p3, p2, 0x1

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setAccessibilityEnabled(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onReaderPageVisibilityChanged()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onReaderPageVisibilityChanged()V

    :cond_5
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->G(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->enableTransBar(Z)V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onHostTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onRecognizeArticleResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRecognizeArticleResult: url - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewTabListener"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onRecognizeArticleResult: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is article : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_article_recognition_page_count"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "pref_article_recognition_positive_count"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    const/16 p2, 0x64

    if-ne v2, p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->E(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "202"

    goto :goto_0

    :cond_2
    const-string p2, "201"

    :goto_0
    const-string v2, "2256"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v2, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyReaderStatusChanged()V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->H(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isOfflineModePage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->showReconnectToOnlinePopup()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->convertBitmapToolbarToView()V

    :goto_0
    return-void
.end method

.method public onRenderFrameHostChanged()V
    .locals 0

    return-void
.end method

.method public onRequestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getHelpMeWriteController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IHelpMeWriteController;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IHelpMeWriteController;->extractContentForWritingComposer(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    return-void
.end method

.method public onSaveWebPage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onSaveWebPage()V

    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onScrollStarted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHoverScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishEditMode()V

    :cond_0
    return-void
.end method

.method public onShow(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onShow(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->H(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSavedReaderPage()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/U;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/U;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x32

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eq p1, p0, :cond_2

    const-string p0, "si__MainViewTabListener"

    const-string p1, "Shown tab is not current tab"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onShowTabGroupList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12

    move-object v6, p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getThinWebView()Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-nez v7, :cond_1

    const-string v0, "si__MainViewTabListener"

    const-string v1, "onShowTabGroupList, null anchor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v8, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v9

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getGroupNameList()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {v8, v9, v7, v10, v11}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v1, p4

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    move/from16 v2, p5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {v8, v1, v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->setOffset(II)V

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->show()V

    return-void
.end method

.method public onStartContentIntent(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    const-string p4, "si__MainViewTabListener"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    :try_start_0
    invoke-static {p3, p0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "URI Error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No Activity Found : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p4}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onTabGroupChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyMultiTabCountChanged()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyMultiTabCountChanged()V

    :cond_1
    return-void
.end method

.method public onTabIsLocked(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabIsLocked(IZ)V

    :cond_0
    return-void
.end method

.method public onTakeFocus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v1, "si__MainViewTabListener"

    if-nez v0, :cond_0

    const-string p0, "onTakeFocus, currentTab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->A(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onTakeFocus()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->F(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "onTakeFocus, null tabBarView"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setFocusUrlBar()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->focusInLeft()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onTitleUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToSaveQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabTitleUpdated(I)V

    :cond_0
    return-void
.end method

.method public onToggleFullscreenModeForTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onToggleFullscreenModeForTab, enterFullscreen = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewTabListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onToggleFullscreenModeForTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v3

    if-nez p2, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFullScreenNoCutout()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarVisible(Landroid/content/Context;Z)V

    goto :goto_5

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v3

    if-nez p2, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFullScreenCutoutMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarVisible(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    :cond_7
    :goto_5
    if-eqz p2, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->closeContextMenu()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->hideReadAloudToolbar(ZZ)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didRemoveVisionTextView()Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->A(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->q(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060d8e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLetterBoxColor(Landroid/content/Context;I)V

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_FULLSCREEN_CONTENT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setShowTransientBarsBySwipe(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->dismissAIViews(Z)V

    goto :goto_7

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFullscreenVideoMode()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->restoreOrientation(Landroid/app/Activity;)V

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarButtons()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->J(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->restoreReadAloudToolbar()V

    :goto_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_c

    move p3, v2

    :cond_c
    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_e

    if-nez p2, :cond_d

    goto :goto_8

    :cond_d
    move v1, v2

    :cond_e
    :goto_8
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavBarVisibility(Landroid/content/Context;Z)V

    :cond_f
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateAssistantMenuIfNecessary()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/os/Handler;

    move-result-object p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_10
    if-eqz p2, :cond_11

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/main_view/U;

    const/4 v0, 0x2

    invoke-direct {p3, p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/U;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateDecorFitsSystemWindows()V

    return-void
.end method

.method public onToolbarShadowVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->F(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->z(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p2, 0x1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarShadow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->showShadowIfNeeded()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->hideShadow()V

    :goto_0
    return-void
.end method

.method public onToolbarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v1, "si__MainViewTabListener"

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Tab isn\'t matched with current tab! requested visibility is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    const-string p1, "Toolbar was not shown"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getOuterLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->updateExtraBar(Z)V

    return-void
.end method

.method public onUpdateTargetUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->onStatusBubbleUpdateTargetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onUpdatedFavicon] tabId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewTabListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;Landroid/os/Handler;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyFaviconUpdated(I)V

    :cond_0
    return-void
.end method

.method public onUrlUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->K(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIsBookmarked(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyCurrentUrlChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabUrlUpdated(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->C(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToSaveQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_2
    return-void
.end method

.method public onWebContentsCreated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onWebContentsCreated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onZoomValueChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;DZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToSaveQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public requestUrlEditMode(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->requestUrlEditMode(Landroid/view/View;)V

    return-void
.end method

.method public setTranslationBottomBarY(FZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$5;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$5;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;F)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onBottomOffsetsChanged(F)V

    :goto_0
    return-void
.end method

.method public setTranslationToolBarY(FZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;F)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onTopOffsetsChanged(F)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFocusLayoutType()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onBottomOffsetsChanged(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setZoomButtonVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setZoomButtonVisibility(Z)V

    return-void
.end method

.method public showReloadTipCardIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->showReloadTipCardIfNeeded()V

    return-void
.end method
