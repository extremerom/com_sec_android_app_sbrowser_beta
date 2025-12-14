.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusOutBottom(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutBottom()Z

    move-result p0

    return p0
.end method

.method public focusOutLeft(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    const/16 v1, 0x11

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isFirstTab()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isScrollButtonEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutLeft()Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isFirstTab()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->focusGroupHeader(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isFirstTab()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isScrollButtonEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutLeft()Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public focusOutRight(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    const/16 v1, 0x42

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isScrollButtonEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getNewTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isLastTab()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->focusGroupCollapseButton(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isLastTab()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isScrollButtonEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getNewTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public focusOutTop(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutTop()Z

    move-result p0

    return p0
.end method

.method public onClick(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isExpanded()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->k(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTabId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->setCurrentTab(I)V

    :goto_0
    return-void
.end method

.method public onClose(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTabId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->closeTab(I)V

    :cond_2
    return-void
.end method

.method public onDrag(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;FF)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->dismissContextMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->setTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setDragging(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;FF)V

    return-void
.end method

.method public onLock(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTabId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->lockTab(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTabId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->unlockTab(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLongClick(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->n(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method public onRemoveWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->removeTabButtonWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    :cond_0
    return-void
.end method

.method public onRemoved(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->m(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->l(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    :goto_0
    return-void
.end method
