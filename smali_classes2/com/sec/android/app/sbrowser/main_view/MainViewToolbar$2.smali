.class Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;
.super Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;
.source "SourceFile"


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
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;I)V

    return-void
.end method


# virtual methods
.method public onBookmarkBarInflated()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->setDelegate(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->setListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->setEmptyListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;)V

    :cond_0
    return-void
.end method

.method public onEditModeFinished()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->isSummarySplitOverShowing()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setTabBarVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onToolbarEditModeFinished()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyStatusBarThemeColorChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onEditModeFinished()V

    return-void
.end method

.method public onEditModeStarted()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNewQuickAccessNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setTabBarVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onToolbarEditModeStarted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyStatusBarThemeColorChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onEditModeStarted()V

    return-void
.end method

.method public onFocusOutLeft()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->D(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->y(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->C(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->focusNewTabButton()Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInRight()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->focusInRight()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onFocusOutRight()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->C(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->focusInLeft()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->D(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->y(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInLeft()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->focusInLeft()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTabBarInflated()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    :cond_0
    return-void
.end method

.method public onToolbarHeightChanged()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->isSummarySplitOverShowing()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyToolbarHeightChanged()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onToolbarHeightChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->notifyToolbarHeightChanged()V

    return-void
.end method

.method public onTransBarInflated(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->y(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->y(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->y(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->o(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->setListener(Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;)V

    if-eqz p2, :cond_0

    const v0, 0x7f0b06ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->y(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->setupPopupLayout(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onToolbarVisibilityChanged(Z)V

    return-void
.end method

.method public triggerForceCapture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureTopBar()V

    return-void
.end method

.method public triggerPostCapture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureTopBar()V

    return-void
.end method
