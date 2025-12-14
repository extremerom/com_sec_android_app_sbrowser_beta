.class public Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private final mHitBounds:Landroid/graphics/Rect;

.field private final mHorizontalMargin:I

.field private final mItemHoriMargin:I

.field private final mItemVertMargin:I

.field private mTouchDelegateView:Landroid/view/View;

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mHitBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0715f1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mHorizontalMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071606

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mItemVertMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071605

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mItemHoriMargin:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mTouchSlop:I

    return-void
.end method

.method private getColumnCount()I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    return p0
.end method

.method private isFirstItemInRow(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->getColumnCount()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    rem-int/2addr p1, p0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isLastItemInRow(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->getColumnCount()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    rem-int/2addr p1, p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v6, :cond_0

    if-eq v2, v5, :cond_0

    const/4 v7, 0x5

    if-eq v2, v7, :cond_0

    const/4 v7, 0x6

    if-eq v2, v7, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mHitBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mTouchDelegateView:Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mHitBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mTouchDelegateView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->isFirstItemInRow(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mItemHoriMargin:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mHorizontalMargin:I

    add-int/2addr v7, v8

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mItemHoriMargin:I

    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->isLastItemInRow(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mItemHoriMargin:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mHorizontalMargin:I

    add-int/2addr v2, v8

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mItemHoriMargin:I

    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mHitBounds:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->left:I

    iget v7, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mItemVertMargin:I

    sub-int/2addr v7, v9

    iput v7, v8, Landroid/graphics/Rect;->top:I

    iget v7, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v2

    iput v7, v8, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v9

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mTouchSlop:I

    neg-int v7, v2

    neg-int v2, v2

    invoke-virtual {v8, v7, v2}, Landroid/graphics/Rect;->inset(II)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mHitBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mTouchDelegateView:Landroid/view/View;

    :cond_5
    :goto_2
    move v0, v6

    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mTouchDelegateView:Landroid/view/View;

    if-eqz v1, :cond_8

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v7

    if-ne v7, v6, :cond_6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->setAction(I)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mTouchDelegateView:Landroid/view/View;

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v2, v0, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;->mTouchSlop:I

    mul-int/lit8 v3, v0, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    mul-int/2addr v0, v5

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_5

    :cond_8
    move v0, v4

    :goto_5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    move v4, v6

    :cond_a
    return v4
.end method
