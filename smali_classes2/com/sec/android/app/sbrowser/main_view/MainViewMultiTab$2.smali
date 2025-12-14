.class Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->createMultiTabEventListener()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->hideAllPopups()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->t(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableTabsHoverPopup(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->enableToolbarButtons(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setEnabled(Z)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    return-void
.end method

.method public onDetached()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setTouchEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2

    if-lez v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->u(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateAssistantMenuIfNecessary()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableToolbarButtons(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->enableTabsHoverPopup(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->x(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->enableBottomBarButtons(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->q(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->p(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->enableTabBarContainer(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->enableToolbarButtons(Z)V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    return-void
.end method

.method public onExitAnimationStarted(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->y(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    :cond_2
    return-void
.end method

.method public onNewTabAnimationStarted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->v(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    return-void
.end method

.method public requestToolbarCapture()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->w(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->forceCapture()V

    return-void
.end method
