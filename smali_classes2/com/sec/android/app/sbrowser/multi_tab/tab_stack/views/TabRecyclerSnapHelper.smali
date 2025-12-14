.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;
.super Landroidx/recyclerview/widget/f0;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelper:Landroidx/recyclerview/widget/m0;

.field private mIsSnapEnabled:Z

.field private mLinearSmoothScroller:Landroidx/recyclerview/widget/d0;

.field private mMaxScrollDistance:I

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/f0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mMaxScrollDistance:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mIsSnapEnabled:Z

    return-void
.end method

.method private distanceToStart(Landroid/view/View;Landroidx/recyclerview/widget/m0;)I
    .locals 0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/m0;->k()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private findFirstView(Landroidx/recyclerview/widget/J0;Landroidx/recyclerview/widget/m0;)Landroid/view/View;
    .locals 6

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_2

    move-object p0, v4

    move v2, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private helper(Landroidx/recyclerview/widget/J0;)Landroidx/recyclerview/widget/m0;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mHelper:Landroidx/recyclerview/widget/m0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/m0;->a(Landroidx/recyclerview/widget/J0;I)Landroidx/recyclerview/widget/m0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mHelper:Landroidx/recyclerview/widget/m0;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mHelper:Landroidx/recyclerview/widget/m0;

    return-object p0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mScroller:Landroid/widget/Scroller;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mScroller:Landroid/widget/Scroller;

    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/q1;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/J0;Landroid/view/View;)[I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/J0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->helper(Landroidx/recyclerview/widget/J0;)Landroidx/recyclerview/widget/m0;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->distanceToStart(Landroid/view/View;Landroidx/recyclerview/widget/m0;)I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method public createScroller(Landroidx/recyclerview/widget/J0;)Landroidx/recyclerview/widget/c1;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p1, Landroidx/recyclerview/widget/b1;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/f0;->createScroller(Landroidx/recyclerview/widget/J0;)Landroidx/recyclerview/widget/c1;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mLinearSmoothScroller:Landroidx/recyclerview/widget/d0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;Landroid/content/Context;Landroidx/recyclerview/widget/J0;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mLinearSmoothScroller:Landroidx/recyclerview/widget/d0;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mLinearSmoothScroller:Landroidx/recyclerview/widget/d0;

    return-object p0
.end method

.method public enableSnap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mIsSnapEnabled:Z

    return-void
.end method

.method public findSnapView(Landroidx/recyclerview/widget/J0;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->mIsSnapEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->helper(Landroidx/recyclerview/widget/J0;)Landroidx/recyclerview/widget/m0;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->findFirstView(Landroidx/recyclerview/widget/J0;Landroidx/recyclerview/widget/m0;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
