.class public Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/N0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;,
        Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnAdvancedDragSelectListener;
    }
.end annotation


# instance fields
.field private mBottomBoundFrom:I

.field private mBottomBoundTo:I

.field private mEnd:I

.field private mInBottomSpot:Z

.field private mInTopSpot:Z

.field private mInitialBottomBoundFrom:I

.field private mIsActive:Z

.field private mLastEnd:I

.field private mLastStart:I

.field private mLastX:F

.field private mLastY:F

.field private mMaxScrollDistance:I

.field private mMaxScrollVelocityLevel:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollDistance:I

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

.field private mStart:I

.field private mTopBoundFrom:I

.field private mTopBoundTo:I

.field private mTouchRegionBottomOffset:I

.field private mTouchRegionTopOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$1;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollDistance:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollVelocityLevel:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTouchRegionTopOffset:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTouchRegionBottomOffset:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->reset()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollDistance:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->scrollBy(I)V

    return-void
.end method

.method private equals(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3727c5ac    # 1.0E-5f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initScroller(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/OverScroller;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    :cond_0
    return-void
.end method

.method private isAutoScrolling()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifySelectRangeChange()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mEnd:I

    if-ne v2, v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mStart:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mEnd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastStart:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_6

    iget v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastEnd:I

    if-ne v5, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    if-le v0, v3, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v3, v6, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_0

    :cond_3
    if-ge v0, v3, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    sub-int/2addr v3, v4

    invoke-interface {v5, v0, v3, v4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    :cond_4
    :goto_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastEnd:I

    if-le v2, v3, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    add-int/2addr v3, v4

    invoke-interface {v1, v3, v2, v4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_2

    :cond_5
    if-ge v2, v3, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5, v3, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_2

    :cond_6
    :goto_1
    sub-int v1, v2, v0

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    invoke-interface {v1, v0, v0, v4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    invoke-interface {v1, v0, v2, v4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    :cond_8
    :goto_2
    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastStart:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastEnd:I

    :cond_9
    :goto_3
    return-void
.end method

.method private processAutoScroll(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTopBoundFrom:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTopBoundTo:I

    if-gt v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastY:F

    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTopBoundTo:I

    int-to-float v1, p1

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTopBoundFrom:I

    int-to-float v4, v3

    sub-float/2addr v1, v4

    int-to-float v0, v0

    int-to-float v4, v3

    sub-float/2addr v0, v4

    sub-float/2addr v1, v0

    int-to-float p1, p1

    int-to-float v0, v3

    sub-float/2addr p1, v0

    div-float/2addr v1, p1

    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollDistance:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollDistance:I

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInTopSpot:Z

    if-nez p1, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInTopSpot:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->startAutoScroll()V

    goto/16 :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastY:F

    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollDistance:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollDistance:I

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInTopSpot:Z

    if-nez p1, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInTopSpot:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->startAutoScroll()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mBottomBoundFrom:I

    if-lt v0, v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mBottomBoundTo:I

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastY:F

    int-to-float p1, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mBottomBoundFrom:I

    int-to-float v1, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mBottomBoundTo:I

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollDistance:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollDistance:I

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInBottomSpot:Z

    if-nez p1, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInBottomSpot:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->startAutoScroll()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mBottomBoundTo:I

    if-le v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastY:F

    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollDistance:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollDistance:I

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInBottomSpot:Z

    if-nez p1, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInBottomSpot:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->startAutoScroll()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInBottomSpot:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInTopSpot:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastX:F

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastY:F

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->stopAutoScroll()V

    :cond_4
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->setIsActive(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnAdvancedDragSelectListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnAdvancedDragSelectListener;

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mEnd:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnAdvancedDragSelectListener;->onSelectionFinished(I)V

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mStart:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mEnd:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastStart:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastEnd:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInTopSpot:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInBottomSpot:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastX:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastY:F

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->stopAutoScroll()V

    return-void
.end method

.method private scrollBy(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    if-lez p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollDistance:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollDistance:I

    neg-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastX:F

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->equals(FF)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastY:F

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->equals(FF)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastX:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;FF)V

    :cond_1
    return-void
.end method

.method private setIsActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mIsActive:Z

    return-void
.end method

.method private startAutoScroll()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const-string v1, "DragSelectTouchListener"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "recyclerview scroll state : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->initScroller(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    const/16 v7, 0x1388

    const v8, 0x186a0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_2
    const-string p0, "startAutoScroll"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopAutoScroll()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->isAutoScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    const-string p0, "DragSelectTouchListener"

    const-string v0, "stopAutoScroll"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;FF)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mEnd:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mEnd:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->notifySelectRangeChange()V

    :cond_0
    return-void
.end method

.method private updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;FF)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mIsActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->reset()V

    const-string p0, "DragSelectTouchListener"

    const-string p1, "detect multi touch. stop"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x5

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_2

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->reset()V

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41e00000    # 28.0f

    mul-float/2addr p2, v3

    float-to-int p2, p2

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollVelocityLevel:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    const/16 v1, 0xa

    goto :goto_1

    :cond_3
    if-lt v3, v2, :cond_4

    move v1, v0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mMaxScrollDistance:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTouchRegionTopOffset:I

    neg-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTopBoundFrom:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTopBoundTo:I

    sub-int p2, p1, p2

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mTouchRegionBottomOffset:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInitialBottomBoundFrom:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mBottomBoundFrom:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mBottomBoundTo:I

    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->reset()V

    const-string p0, "DragSelectTouchListener"

    const-string p1, "detect multi touch. stop"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    const/4 p1, 0x6

    if-eq v0, p1, :cond_4

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mInTopSpot:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->processAutoScroll(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->reset()V

    :goto_0
    return-void
.end method

.method public startDragSelection(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->setIsActive(Z)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mStart:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mEnd:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastStart:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mLastEnd:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnAdvancedDragSelectListener;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnAdvancedDragSelectListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnAdvancedDragSelectListener;->onSelectionStarted(I)V

    :cond_0
    return-void
.end method

.method public withSelectListener(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;)Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    return-object p0
.end method
