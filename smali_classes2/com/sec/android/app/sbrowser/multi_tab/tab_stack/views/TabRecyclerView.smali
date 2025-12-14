.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Scroll;,
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;,
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;
    }
.end annotation


# instance fields
.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field protected mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

.field protected mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

.field protected mDragStartX:F

.field protected mDragStartY:F

.field protected mIsAppBarOffsetRatio:F

.field protected mIsClosing:Z

.field protected volatile mIsDismissAnimation:Z

.field protected mIsDraggingHorizontal:Z

.field protected mIsDraggingVertical:Z

.field protected mIsHorizontalScrollBlocked:Z

.field private mIsOnMultiSelect:Z

.field protected mIsScrollBlocked:Z

.field protected mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field protected mPointerIndex:I

.field protected mScrollDirection:I

.field protected mSelectedView:Landroid/view/View;

.field protected mShouldAnimateTabsOnLoad:Z

.field protected mTabRecyclerSnapHelper:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

.field protected mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mPointerIndex:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mScrollDirection:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mShouldAnimateTabsOnLoad:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic E(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->lambda$dismissAnimation$0(I)V

    return-void
.end method

.method public static synthetic F(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->lambda$resetVelocityTracker$2()V

    return-void
.end method

.method public static synthetic G(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->lambda$performFlingActions$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic H(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->lambda$onTouchActionUp$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;ZIZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->lambda$performFlingActions$3(ZIZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mTouchSlop:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mMaximumVelocity:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mMinimumVelocity:I

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;->EMPTY:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method private synthetic lambda$dismissAnimation$0(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private synthetic lambda$onTouchActionUp$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->deelevateSelectedView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$performFlingActions$3(ZIZLandroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->bringBackAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->removeUnlockedMemberBySwipe(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {p0, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->dismissAnimation(ZI)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$performFlingActions$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->bringBackAnimation()V

    return-void
.end method

.method private synthetic lambda$resetVelocityTracker$2()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingHorizontal:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingVertical:Z

    return-void
.end method

.method private onInterceptTouchMoveEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchMoveEventNonDragging(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private onInterceptTouchUpEvent()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->resetVelocityTracker()V

    return-void
.end method

.method private onTouchActionDown(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mScrollDirection:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartX:F

    return-void
.end method

.method private onTouchEventWithAction(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mPointerIndex:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchActionUp()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchActionUp()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchActionDown(Landroid/view/MotionEvent;)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingHorizontal:Z

    if-nez v1, :cond_4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    return v0
.end method

.method private onTouchMoveEventNonDragging(Landroid/view/MotionEvent;)V
    .locals 7

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingHorizontal:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingVertical:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingVertical:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingHorizontal:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartY:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mScrollDirection:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartX:F

    sub-float/2addr v1, v5

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingVertical:Z

    if-eqz v5, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v6

    cmpl-float v0, v5, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsOnMultiSelect:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsHorizontalScrollBlocked:Z

    if-nez v0, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingVertical:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingHorizontal:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartX:F

    cmpl-float p1, v1, v2

    if-lez p1, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    :goto_1
    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mScrollDirection:I

    :cond_4
    return-void
.end method

.method private performFlingActions()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->isChildSwipedFarEnough()Z

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mMinimumVelocity:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    if-lez v0, :cond_3

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingHorizontal:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->isLockedTab(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->isGroupTab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->hasLockTab(Landroid/view/View;)Z

    move-result v8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->getTabIndex(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->getTitle(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/m;

    invoke-direct {v9, p0, v8, v0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/m;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;ZIZ)V

    new-instance v10, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/n;

    invoke-direct {v10, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/n;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;)V

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->showCloseGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->setCloseDialog(Lm/l;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->dismissAnimation(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->bringBackAnimation()V

    :cond_7
    :goto_3
    return-void
.end method

.method private resetVelocityTracker()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public adjustViewScales()V
    .locals 0

    return-void
.end method

.method public bringBackAnimation()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public deelevateSelectedView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method public declared-synchronized dismissAnimation(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDismissAnimation:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/f;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/f;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized dismissAnimation(ZLandroid/view/View;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->dismissAnimation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public elevateSelectedView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method public enableNestedScrollIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->isAppbarExtended()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_1
    return-void
.end method

.method public getFirstVisiblePosition()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getLastVisiblePosition()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public isChildSwipedFarEnough()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSwiping()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mScrollDirection:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onInterceptTouchDownEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mScrollDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->elevateSelectedView(Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsScrollBlocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDismissAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mPointerIndex:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onInterceptTouchMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onInterceptTouchUpEvent()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onInterceptTouchDownEvent(Landroid/view/MotionEvent;)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingHorizontal:Z

    if-nez v0, :cond_4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsAppBarOffsetRatio:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->shouldScrollBarShown()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->enableNestedScrollIfNeeded()V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mTabRecyclerSnapHelper:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->enableSnap(Z)V

    return-void
.end method

.method public onTouchActionMove(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchMoveEventNonDragging(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartY:F

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingHorizontal:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsOnMultiSelect:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartX:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDragStartX:F

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchActionUp()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mScrollDirection:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;->onTouchUp(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mScrollDirection:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->performFlingActions()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->resetVelocityTracker()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, v0}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 p0, 0x96

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;->onTouch()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mPointerIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingVertical:Z

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDraggingHorizontal:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsScrollBlocked:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDismissAnimation:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->onTouchEventWithAction(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public setAppBarOffsetRatio(F)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mTabRecyclerSnapHelper:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    const-wide/16 v2, 0x32

    const/4 v4, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->enableSnap(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->shouldScrollBarShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;I)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    const/4 v5, 0x0

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->enableSnap(Z)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;I)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->enableSnap(Z)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsAppBarOffsetRatio:F

    return-void
.end method

.method public setCallback(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    return-void
.end method

.method public setHorizontalScrollBlock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsHorizontalScrollBlocked:Z

    return-void
.end method

.method public setIsClosing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsClosing:Z

    return-void
.end method

.method public setIsOnMultiSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsOnMultiSelect:Z

    return-void
.end method

.method public setModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mShouldAnimateTabsOnLoad:Z

    return-void
.end method

.method public setScrollBlock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsScrollBlocked:Z

    return-void
.end method

.method public shouldScrollBarShown()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->isHideStatusBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070b16

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;->getContainerHeight()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/lit8 p0, p0, 0xa

    if-lt p0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public showTransitionAnimation()V
    .locals 7

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mShouldAnimateTabsOnLoad:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ec0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mShouldAnimateTabsOnLoad:Z

    return-void
.end method

.method public snappedToFirstPosition(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getLastVisiblePosition()I

    move-result v1

    const-string v2, "TabRecyclerView"

    if-ltz v0, :cond_4

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, -0x1

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
