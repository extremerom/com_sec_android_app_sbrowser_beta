.class public abstract Landroidx/recyclerview/widget/q1;
.super Landroidx/recyclerview/widget/M0;
.source "SourceFile"


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field private mOverScroller:Landroid/widget/OverScroller;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollListener:Landroidx/recyclerview/widget/O0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/p1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/p1;-><init>(Landroidx/recyclerview/widget/q1;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/q1;->mScrollListener:Landroidx/recyclerview/widget/O0;

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/q1;->mScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/M0;)V

    :cond_1
    iput-object p1, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/M0;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->mScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/M0;)V

    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/q1;->mGravityScroller:Landroid/widget/Scroller;

    new-instance p1, Landroid/widget/OverScroller;

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/q1;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/q1;->snapToTargetExistingView()V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "An instance of OnFlingListener already set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/J0;Landroid/view/View;)[I
.end method

.method public abstract createScroller(Landroidx/recyclerview/widget/J0;)Landroidx/recyclerview/widget/c1;
.end method

.method public abstract findSnapView(Landroidx/recyclerview/widget/J0;)Landroid/view/View;
.end method

.method public abstract findTargetSnapPosition(Landroidx/recyclerview/widget/J0;II)I
.end method

.method public onFling(II)Z
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_6

    :cond_2
    instance-of v2, v0, Landroidx/recyclerview/widget/b1;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/q1;->createScroller(Landroidx/recyclerview/widget/J0;)Landroidx/recyclerview/widget/c1;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/q1;->findTargetSnapPosition(Landroidx/recyclerview/widget/J0;II)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/c1;->setTargetPosition(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/J0;->startSmoothScroll(Landroidx/recyclerview/widget/c1;)V

    const/4 v1, 0x1

    :cond_6
    :goto_0
    return v1
.end method

.method public seslCalculateScrollDistanceForLinear(II)[I
    .locals 10

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v1, p0, Landroidx/recyclerview/widget/q1;->mOverScroller:Landroid/widget/OverScroller;

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object p1, p0, Landroidx/recyclerview/widget/q1;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/q1;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public snapToTargetExistingView()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/q1;->findSnapView(Landroidx/recyclerview/widget/J0;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/q1;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/J0;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    aget v3, v0, v2

    if-eqz v3, :cond_4

    :cond_3
    iget-object p0, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_4
    return-void
.end method
