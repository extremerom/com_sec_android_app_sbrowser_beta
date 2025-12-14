.class Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;I)V

    return-void
.end method


# virtual methods
.method public onEditModeStarted()V
    .locals 0

    return-void
.end method

.method public onFocusOutLeft()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->C(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->focusNewTabButton()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInRight()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFocusOutRight()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInLeft()V

    return-void
.end method

.method public onFocusOutTop()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInLeft()V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->u(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->E(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerForceCapture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureBottomBar()V

    return-void
.end method

.method public triggerPostCapture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureBottomBar()V

    return-void
.end method
