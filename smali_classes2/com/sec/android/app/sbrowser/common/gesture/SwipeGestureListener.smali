.class public Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$ScrollDirection;,
        Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;
    }
.end annotation


# instance fields
.field private mDirection:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

.field private final mMotionStartPoint:Landroid/graphics/PointF;

.field private final mSwipeHorizontalDragThreshold:I

.field private final mSwipeVerticalDragThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mMotionStartPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mDirection:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mSwipeVerticalDragThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mSwipeHorizontalDragThreshold:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;II)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mMotionStartPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mDirection:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mGestureDetector:Landroid/view/GestureDetector;

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mSwipeVerticalDragThreshold:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mSwipeHorizontalDragThreshold:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

    const/4 p1, 0x0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mDirection:I

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mMotionStartPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v3, p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mMotionStartPoint:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float v4, p1, p0

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;->onFling(ILandroid/view/MotionEvent;FFFF)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mDirection:I

    const/4 v2, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->shouldRecognizeSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mSwipeHorizontalDragThreshold:I

    int-to-float v4, v4

    cmpg-float p1, p1, v4

    if-gez p1, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mSwipeVerticalDragThreshold:I

    int-to-float v4, v4

    cmpg-float p1, p1, v4

    if-gez p1, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float p1, p1, v4

    const/4 v4, 0x0

    if-lez p1, :cond_3

    cmpl-float p1, v0, v4

    if-lez p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_0

    :cond_3
    cmpl-float p1, v3, v4

    if-lez p1, :cond_4

    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    :goto_0
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;->isSwipeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mDirection:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;->onSwipeStarted(ILandroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mMotionStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_5
    iget p1, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mDirection:I

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mMotionStartPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mMotionStartPoint:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float v6, p1, p0

    neg-float v7, p3

    neg-float v8, p4

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;->onSwipeUpdated(Landroid/view/MotionEvent;FFFF)V

    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mDirection:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mHandler:Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;->onSwipeFinished()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->mDirection:I

    move v0, v1

    :cond_1
    return v0
.end method

.method public shouldRecognizeSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
