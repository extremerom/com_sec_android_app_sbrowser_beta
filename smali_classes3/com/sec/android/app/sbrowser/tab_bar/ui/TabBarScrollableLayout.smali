.class public abstract Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;
.super Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;
.source "SourceFile"


# instance fields
.field private mKeepScroll:Z

.field private final mScrollHelper:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mScrollTarget:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

.field private mTouchEventConsumed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mTouchEventConsumed:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/l;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/l;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;)V

    invoke-direct {p1, p2, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Listener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollHelper:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;

    return-void
.end method

.method private cannotScroll()Z
    .locals 1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->lambda$postScrollToChild$1(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->lambda$startScroll$0(Z)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->isTabGroupScrollHeaderSupported()Z

    move-result p0

    return p0
.end method

.method private isScrollTargetExists()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollTarget:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTabGroupScrollHeaderSupported()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->shouldScrollButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$postScrollToChild$1(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->scrollToChild(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V

    return-void
.end method

.method private synthetic lambda$startScroll$0(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mKeepScroll:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mTouchEventConsumed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-eqz p1, :cond_0

    const/16 p1, -0x1e

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e

    :goto_0
    add-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private postScrollToChild(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->cannotScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/messaging/p;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    const-wide/16 p1, 0x15e

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollToChild(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->cannotScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollHelper:Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper;->scrollToChild(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V

    return-void
.end method


# virtual methods
.method public abstract executeScroll(IZ)V
.end method

.method public bridge synthetic getCurrentWidth()D
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->getCurrentWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHiddenTabGroupViewByScroll(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->isTabGroupScrollHeaderSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getHiddenTabGroupViewByScroll(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLayout()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->getLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleScrollX(I)I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-double v0, p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getTabBarWidth()D

    move-result-wide p0

    add-double/2addr p0, v0

    double-to-int p1, p0

    :cond_0
    return p1
.end method

.method public scrollToCurrentTabButton()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->cannotScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInCollapsedGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupViewByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->isTabRestoring()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->postScrollToChild(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V

    return-void

    :cond_2
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->isTabRestoring()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->postScrollToChild(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V

    return-void
.end method

.method public scrollToNextButton(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mTouchEventConsumed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getTabButtonWidth()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getHorizontalMargin()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    int-to-double v4, p0

    if-eqz p1, :cond_1

    neg-double v2, v2

    :cond_1
    add-double/2addr v4, v2

    double-to-int p0, v4

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method public scrollToPendingChild()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->cannotScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->isScrollTargetExists()Z

    move-result v0

    const-string v1, "TabBarScrollableLayout"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[scrollToPendingChild] to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollTarget:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollTarget:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->isTabRestoring()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->postScrollToChild(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->setScrollTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    goto :goto_0

    :cond_1
    const-string v0, "[scrollToPendingChild] to current tab"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->scrollToCurrentTabButton()V

    :goto_0
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

.method public setScrollTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setScrollTarget] target = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "TabBarScrollableLayout"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollTarget:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    return-void
.end method

.method public startScroll(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mKeepScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mTouchEventConsumed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopScroll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mScrollRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->mKeepScroll:Z

    return-void
.end method
