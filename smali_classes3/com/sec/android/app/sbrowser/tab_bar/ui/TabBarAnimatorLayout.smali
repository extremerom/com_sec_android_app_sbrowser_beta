.class public abstract Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;
.super Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;
.source "SourceFile"


# instance fields
.field private final mAnimationListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private final mAnimator:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout$1;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimationListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimator:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;

    return-void
.end method

.method private addDeleteAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimator:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->addDeleteAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;)Z

    move-result p0

    return p0
.end method

.method private addResizeAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimator:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->addResizeAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;I)Z

    move-result p0

    return p0
.end method

.method private removeTabGroupWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setIsClosing()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->addDeleteAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabGroupView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    return-void
.end method

.method private removeTabGroupWithAnimationIfNeeded(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupViewByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getActualTabCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->removeTabGroupWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTabBarScrollViewAnimation()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getTabBarWidth()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isCreating()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimator:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->addResizeAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setIsAnimating(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setIsCreatingEnded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->NONE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)V

    return-void
.end method

.method private updateTabButtonLayoutAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCreating()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->addResizeAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setIsAnimating(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setIsCreatingEnded()V

    sget-object p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->NONE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateMargin()V

    return-void
.end method

.method private updateTabButtonLayoutAnimations()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->updateTabGroupLayoutAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getTabButtonWidth()D

    move-result-wide v3

    double-to-int v3, v3

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->updateTabButtonLayoutAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTabGroupLayoutAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getTabButtonWidth()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v1, v0

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupWidth(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->updateTabGroupParentAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->updateTabButtonLayoutAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateTabGroupParentAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isCreating()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->addResizeAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setIsAnimating(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setIsCreatingEnded()V

    sget-object p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->NONE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateMargin()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCurrentWidth()D
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->getCurrentWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLayout()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->getLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimator:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public abstract onAnimationCanceled()V
.end method

.method public abstract onAnimationEnded()V
.end method

.method public removeTabButtonWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setIsClosing()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->removeTabGroupWithAnimationIfNeeded(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->addDeleteAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    return-void
.end method

.method public bridge synthetic setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V

    return-void
.end method

.method public bridge synthetic setIsTabTearing(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setIsTabTearing(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    return-void
.end method

.method public updateLayoutAnimation()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->updateTabBarScrollViewAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->updateTabButtonLayoutAnimations()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimator:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->getAnimationCount()I

    move-result v0

    const-string v1, "TabBarAnimatorLayout"

    if-lez v0, :cond_0

    const-string v0, "[updateLayoutAnimation] start animation"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimator:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimationListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->startAnimations(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_0
    const-string v0, "[updateLayoutAnimation] update directly"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->mAnimator:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->abortAnimations()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->onAnimationEnded()V

    :goto_0
    return-void
.end method
