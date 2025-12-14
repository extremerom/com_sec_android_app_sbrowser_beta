.class public Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;
.super Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$ScaleListener;,
        Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;
    }
.end annotation


# instance fields
.field private mBitmapHeight:F

.field private mBitmapWidth:F

.field private mBottom:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:F

.field private mIsZoomEnabled:Z

.field private mLastPoint:Landroid/graphics/PointF;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaximumScale:F

.field private mMode:I

.field private mNineValue:[F

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOriginalHeight:F

.field private mOriginalWidth:F

.field private mRedundantXSpace:F

.field private mRedundantYSpace:F

.field private mRight:F

.field private mSavedScale:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mStartPoint:Landroid/graphics/PointF;

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMode:I

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mLastPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mStartPoint:Landroid/graphics/PointF;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMaximumScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mNineValue:[F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mIsZoomEnabled:Z

    new-instance v3, LK6/j;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p0}, LK6/j;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-super {p0, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$ScaleListener;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$ScaleListener;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;I)V

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;I)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMaximumScale:F

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMode:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMode:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->onScale(FFF)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mIsZoomEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mNineValue:[F

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mNineValue:[F

    const/4 v2, 0x2

    aget v3, p1, v2

    const/4 v4, 0x5

    aget p1, p1, v4

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_15

    if-eq v6, v1, :cond_13

    if-eq v6, v2, :cond_4

    if-eq v6, v4, :cond_3

    const/4 p1, 0x6

    if-eq v6, p1, :cond_2

    goto/16 :goto_7

    :cond_2
    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMode:I

    goto/16 :goto_7

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mStartPoint:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMode:I

    goto/16 :goto_7

    :cond_4
    iget p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMode:I

    if-eq p2, v2, :cond_5

    if-ne p2, v1, :cond_11

    iget p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_11

    :cond_5
    iget p2, v5, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mLastPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v2

    iget v2, v5, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mOriginalWidth:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mOriginalHeight:F

    iget v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mWidth:F

    cmpg-float v0, v0, v6

    const/4 v6, 0x0

    if-gez v0, :cond_8

    add-float p2, p1, v2

    cmpl-float v0, p2, v6

    if-lez v0, :cond_7

    :goto_0
    neg-float v2, p1

    :cond_6
    move p2, v6

    goto :goto_5

    :cond_7
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBottom:F

    neg-float v3, v0

    cmpg-float p2, p2, v3

    if-gez p2, :cond_6

    add-float/2addr p1, v0

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mHeight:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_b

    add-float p1, v3, p2

    cmpl-float v0, p1, v6

    if-lez v0, :cond_a

    :goto_1
    neg-float p2, v3

    :cond_9
    move v2, v6

    goto :goto_5

    :cond_a
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRight:F

    neg-float v2, v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_9

    add-float/2addr v3, v0

    goto :goto_1

    :cond_b
    add-float v0, v3, p2

    cmpl-float v4, v0, v6

    if-lez v4, :cond_c

    :goto_2
    neg-float p2, v3

    goto :goto_3

    :cond_c
    iget v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRight:F

    neg-float v7, v4

    cmpg-float v0, v0, v7

    if-gez v0, :cond_d

    add-float/2addr v3, v4

    goto :goto_2

    :cond_d
    :goto_3
    add-float v0, p1, v2

    cmpl-float v3, v0, v6

    if-lez v3, :cond_e

    :goto_4
    neg-float v2, p1

    goto :goto_5

    :cond_e
    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBottom:F

    neg-float v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_f

    add-float/2addr p1, v3

    goto :goto_4

    :cond_f
    :goto_5
    cmpl-float p1, p2, v6

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->startInterceptEvent()V

    goto :goto_6

    :cond_10
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->stopInterceptEvent()V

    :goto_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mLastPoint:Landroid/graphics/PointF;

    iget p2, v5, Landroid/graphics/PointF;->x:F

    iget v0, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    :cond_11
    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMode:I

    if-ne p1, v1, :cond_16

    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    float-to-double p1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v2

    if-nez p1, :cond_12

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->startInterceptEvent()V

    goto :goto_7

    :cond_12
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->stopInterceptEvent()V

    goto :goto_7

    :cond_13
    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMode:I

    iget p1, v5, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mStartPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iget p2, v5, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mStartPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    const/4 v0, 0x3

    if-ge p1, v0, :cond_14

    if-ge p2, v0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_14
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->startInterceptEvent()V

    goto :goto_7

    :cond_15
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mStartPoint:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMode:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->stopInterceptEvent()V

    :cond_16
    :goto_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method private onScale(FFF)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scaleFactor : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / focusX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / focusY : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomableImageView"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mIsZoomEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    mul-float v1, v0, p1

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMaximumScale:F

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    div-float p1, v2, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, v1, v4

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->resetScale()V

    return-void

    :cond_2
    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mWidth:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    mul-float v2, v0, v1

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRedundantXSpace:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRight:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mHeight:F

    mul-float v3, v2, v1

    sub-float/2addr v3, v2

    iget v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRedundantYSpace:F

    mul-float/2addr v6, v5

    mul-float/2addr v6, v1

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBottom:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mOriginalWidth:F

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v0

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-lez v3, :cond_7

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mOriginalHeight:F

    mul-float/2addr v3, v1

    cmpg-float v1, v3, v2

    if-gtz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mNineValue:[F

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mNineValue:[F

    aget p3, p2, v7

    aget p2, p2, v6

    cmpg-float p1, p1, v4

    if-gez p1, :cond_b

    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRight:F

    neg-float v0, p1

    cmpg-float v0, p3, v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    add-float/2addr p3, p1

    neg-float p1, p3

    invoke-virtual {v0, p1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_4
    cmpl-float p1, p3, v8

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    neg-float p3, p3

    invoke-virtual {p1, p3, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    :goto_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBottom:F

    neg-float p3, p1

    cmpg-float p3, p2, p3

    if-gez p3, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    add-float/2addr p2, p1

    neg-float p1, p2

    invoke-virtual {p0, v8, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    :cond_6
    cmpl-float p1, p2, v8

    if-lez p1, :cond_b

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    neg-float p1, p2

    invoke-virtual {p0, v8, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    div-float/2addr v0, v5

    div-float/2addr v2, v5

    invoke-virtual {p2, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    cmpg-float p1, p1, v4

    if-gez p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mNineValue:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mNineValue:[F

    aget p2, p1, v7

    aget p1, p1, v6

    iget p3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mOriginalWidth:F

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    mul-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mWidth:F

    cmpg-float p3, p3, v0

    if-gez p3, :cond_9

    iget p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBottom:F

    neg-float p3, p2

    cmpg-float p3, p1, p3

    if-gez p3, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    add-float/2addr p1, p2

    neg-float p1, p1

    invoke-virtual {p0, v8, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    :cond_8
    cmpl-float p2, p1, v8

    if-lez p2, :cond_b

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    neg-float p1, p1

    invoke-virtual {p0, v8, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRight:F

    neg-float p3, p1

    cmpg-float p3, p2, p3

    if-gez p3, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    add-float/2addr p2, p1

    neg-float p1, p2

    invoke-virtual {p0, p1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    :cond_a
    cmpl-float p1, p2, v8

    if-lez p1, :cond_b

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    neg-float p1, p2

    invoke-virtual {p0, p1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_b
    :goto_3
    return-void
.end method

.method private startInterceptEvent()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method private stopInterceptEvent()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mWidth:F

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mHeight:F

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->resetScale()V

    return-void
.end method

.method public resetScale()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mWidth:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBitmapWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mHeight:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBitmapHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_0

    iput v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMaximumScale:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->setZoomable(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    div-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMaximumScale:F

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->setZoomable(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iput v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mHeight:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBitmapHeight:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mWidth:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBitmapWidth:F

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRedundantYSpace:F

    div-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRedundantXSpace:F

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRedundantXSpace:F

    mul-float v3, v2, v0

    sub-float v3, v1, v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mOriginalWidth:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mHeight:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRedundantYSpace:F

    mul-float v5, v4, v0

    sub-float v5, v3, v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mOriginalHeight:F

    iget v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mSavedScale:F

    mul-float v6, v1, v5

    sub-float/2addr v6, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, v5

    sub-float/2addr v6, v2

    iput v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mRight:F

    mul-float v1, v3, v5

    sub-float/2addr v1, v3

    mul-float/2addr v4, v0

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBottom:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBitmapWidth:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mBitmapHeight:F

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->mIsZoomEnabled:Z

    return-void
.end method
