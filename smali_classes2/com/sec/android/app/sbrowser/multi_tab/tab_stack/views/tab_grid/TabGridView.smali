.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;
.source "SourceFile"


# instance fields
.field private mHorizontalSpacing:I

.field private mItemWidth:I

.field private final mLayoutManager:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridViewLayoutManager;

.field private mSpanCount:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridViewLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->getSpanCount()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridViewLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mLayoutManager:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridViewLayoutManager;

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/e;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/e;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;)V

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridViewLayoutManager;->setCallback(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridViewLayoutManager$Callback;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/J0;->setItemPrefetchEnabled(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mTabRecyclerSnapHelper:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic J(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->showTransitionAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;->onLayoutCompleted()V

    return-void
.end method


# virtual methods
.method public adjustViewScales()V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->isReordering()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->getSpanCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    if-gt v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v4

    sub-float v6, v5, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v5, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setZ(F)V

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public computeVerticalScrollOffsetForSpen()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mSpanCount:I

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->computeVerticalScrollOffsetForGridView(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[computeVerticalScrollOffset] - offset : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabGridView"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getHorizontalSpacing()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mHorizontalSpacing:I

    return p0
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mSpanCount:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getVerticalSpacing()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mVerticalSpacing:I

    return p0
.end method

.method public isChildSwipedFarEnough()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mItemWidth:I

    int-to-float p0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsClosing:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setSpacing(IIII)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mSpanCount:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mItemWidth:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mHorizontalSpacing:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mVerticalSpacing:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->mLayoutManager:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridViewLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridItemDecoration;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridItemDecoration;-><init>(II)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public snappedToFirstPosition(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getLastVisiblePosition()I

    move-result v1

    const-string v2, "TabGridView"

    if-ltz v0, :cond_4

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->getSpanCount()I

    move-result v3

    sub-int v3, v1, v3

    if-lt p1, v3, :cond_2

    if-ne p1, v0, :cond_1

    const-string p0, "Already scrolled to target"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    const-string p0, "Snapped to first position"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    const-string p0, "Visible position is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
