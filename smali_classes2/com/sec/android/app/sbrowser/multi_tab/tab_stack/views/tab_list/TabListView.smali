.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;
.source "SourceFile"


# instance fields
.field private mIsFirstLayout:Z

.field private mIsOnEndEffect:Z

.field private mIsOnEndEffectOnTop:Z

.field private mIsOnFinishingEndEffect:Z

.field private mIsOnStartingEndEffect:Z

.field private mShouldFinishEndEffectAfterStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsFirstLayout:Z

    new-instance p3, LY2/b;

    invoke-direct {p3}, LY2/b;-><init>()V

    invoke-virtual {p3, p0, p2}, LY2/f0;->excludeChildren(Landroid/view/View;Z)LY2/f0;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p3, v0}, LY2/n0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    invoke-static {p0, p3}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->getSpanCount()I

    move-result p2

    new-instance p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager;

    invoke-direct {p3, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/J0;->setItemPrefetchEnabled(Z)V

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/b;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/b;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager;->setCallback(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$Callback;)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/M0;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mTabRecyclerSnapHelper:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic J(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mShouldFinishEndEffectAfterStart:Z

    return p0
.end method

.method public static bridge synthetic L(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnEndEffect:Z

    return-void
.end method

.method public static bridge synthetic M(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnFinishingEndEffect:Z

    return-void
.end method

.method public static bridge synthetic N(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnStartingEndEffect:Z

    return-void
.end method

.method public static bridge synthetic O(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mShouldFinishEndEffectAfterStart:Z

    return-void
.end method

.method public static bridge synthetic P(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->finishEndEffect()V

    return-void
.end method

.method private finishEndEffect()V
    .locals 10

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnEndEffect:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnFinishingEndEffect:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnStartingEndEffect:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mShouldFinishEndEffectAfterStart:Z

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnFinishingEndEffect:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnEndEffectOnTop:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v7, v2, v3

    int-to-float v8, v0

    const v3, 0x3f75c28f    # 0.96f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f75c28f    # 0.96f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x14d

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->getTabMainView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getEndEffectStartDuration(F)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x453b8000    # 3000.0f

    div-float/2addr p1, p0

    float-to-int p0, p1

    const/16 p1, 0x32

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p1, 0x14d

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->showTransitionAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->isNoTabsShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;->onLayoutCompleted()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->enableNestedScrollIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showEndEffectIfNeeded(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->isReordering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    cmpl-float v4, v0, p1

    if-lez v4, :cond_3

    move v2, v1

    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnEndEffect:Z

    if-eqz v4, :cond_5

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnEndEffectOnTop:Z

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->finishEndEffect()V

    :goto_0
    return-void

    :cond_5
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnEndEffectOnTop:Z

    const/4 v4, -0x1

    if-eqz v2, :cond_7

    invoke-virtual {p0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsAppBarOffsetRatio:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_8

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsAppBarOffsetRatio:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->getEndEffectStartDuration(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->startEndEffect(I)V

    :cond_a
    :goto_1
    return-void
.end method

.method private startEndEffect(I)V
    .locals 10

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnEndEffect:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnEndEffect:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnStartingEndEffect:Z

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsOnEndEffectOnTop:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v7, v2, v3

    int-to-float v8, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f75c28f    # 0.96f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f75c28f    # 0.96f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)V

    invoke-virtual {v2, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->getTabMainView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public adjustViewScales()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->getSpanCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->isReordering()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v3, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    add-int/lit8 v5, v0, 0x1

    if-ne v3, v5, :cond_3

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v6

    div-float/2addr v3, v5

    sub-float/2addr v4, v3

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v5, v3

    invoke-virtual {v2, v5}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getSpanCount()I
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    const/16 p0, 0x24d

    if-ge v0, p0, :cond_0

    return v4

    :cond_0
    const/16 p0, 0x3c0

    if-ge v0, p0, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isFoldableDeviceTypeFold()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isFoldableDeviceTypeFold()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v4

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isFoldableDeviceTypeFold()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result p0

    if-nez p0, :cond_7

    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    return v4

    :cond_7
    :goto_1
    return v3
.end method

.method public isChildSwipedFarEnough()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsFirstLayout:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->mIsFirstLayout:Z

    return-void
.end method

.method public onTouchActionMove(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchActionMove(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingVertical:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->showEndEffectIfNeeded(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onTouchActionUp()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchActionUp()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->finishEndEffect()V

    return-void
.end method
