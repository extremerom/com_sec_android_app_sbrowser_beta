.class Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureBitmapAsync(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    return-void
.end method

.method public getBottomBar()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getFixedToolbarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getFixedToolbarHeight()I

    move-result p0

    return p0
.end method

.method public getOptionMenuBadgeCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getOptionMenuBadgeCount()I

    move-result p0

    return p0
.end method

.method public getTabBarButtons()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->isTabBarShowing()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getTabBarButtons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTabCountInGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCount()I

    move-result p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getMemberCount(Ljava/lang/String;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public getTabIndex(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0
.end method

.method public getTabThumbnail(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->B(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getToolbar()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method public getTouchedArea(Landroid/view/MotionEvent;)J
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->A(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->z(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public isBookmarkBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isBookmarkBarContainerShowing()Z

    move-result p0

    return p0
.end method

.method public isContentDarkModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isContentDarkModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isHighContrastModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isInControlBarArea(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->getTouchedArea(Landroid/view/MotionEvent;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInToolbarArea(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->A(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isKeyboardTurnedOn()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isNewQuickAccessPortrait()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNewQuickAccessNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNightModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isSecretMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->B(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z

    move-result p0

    return p0
.end method

.method public isSwipeAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->q(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isLocationBarEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isReaderModeInProgress()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabBarShowing()Z

    move-result p0

    return p0
.end method

.method public isTranslationBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTransBarContainerShowing()Z

    move-result p0

    return p0
.end method

.method public resetDrawableStates()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStatesRecursive(Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStatesRecursive(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->E(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->E(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->isTabBarShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->activateCurrentTabButton()V

    :cond_2
    :goto_0
    return-void
.end method
