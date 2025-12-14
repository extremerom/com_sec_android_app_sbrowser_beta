.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView$ThumbnailType;,
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView$AnimationType;
    }
.end annotation


# instance fields
.field private mAnimationProgress:F

.field private mAnimationType:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRatio:F

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mContext:Landroid/content/Context;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mDstViewForCustomRatio:Landroid/view/View;

.field private mIsDarkThemeEnabled:Z

.field private mIsMultiWindowMode:Z

.field private mIsOrientationChanged:Z

.field private final mLayoutRect:Landroid/graphics/RectF;

.field private final mMainToolbarHeightInitial:I

.field private mMarginX:F

.field private mMarginY:F

.field private mOriginalHeight:F

.field private mOriginalRatio:F

.field private mOriginalWidth:F

.field private final mPartialBitmapRect:Landroid/graphics/Rect;

.field private mReverseTabThumbnailRatio:F

.field private final mScaleMatrix:Landroid/graphics/Matrix;

.field private mThumbnailType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mPartialBitmapRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    iput p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mThumbnailType:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mMainToolbarHeightInitial:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private drawLandscapeIntroLandscapeOutro(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalWidth:F

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalHeight:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mMarginY:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mAnimationProgress:F

    invoke-static {v2, v1, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->interpolate(FFFF)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mMarginX:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mAnimationProgress:F

    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->interpolate(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawLandscapeIntroPortraitOutro(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalRatio:F

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mPartialBitmapRect:Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mReverseTabThumbnailRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mPartialBitmapRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawMultiWindowLandscapeIntro(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalRatio:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRatio:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mIsOrientationChanged:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawLandscapeIntroLandscapeOutro(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalHeight:F

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalWidth:F

    div-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mIsOrientationChanged:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mMarginY:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mAnimationProgress:F

    invoke-static {v2, v1, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->interpolate(FFFF)F

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mMarginX:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mAnimationProgress:F

    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->interpolate(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawMultiWindowPortraitIntro(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalRatio:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRatio:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawPortraitIntroPortraitOutro(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawMultiWindowLandscapeIntro(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawPortraitIntroLandscapeOutro(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawPortraitIntroPortraitOutro(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalHeight:F

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalWidth:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mMarginY:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mAnimationProgress:F

    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->interpolate(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawWithAnimationType(Landroid/graphics/Canvas;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mAnimationType:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawMultiWindowLandscapeIntro(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawMultiWindowPortraitIntro(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawLandscapeIntroPortraitOutro(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawLandscapeIntroLandscapeOutro(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawPortraitIntroLandscapeOutro(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawPortraitIntroPortraitOutro(Landroid/graphics/Canvas;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAnimationType()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mIsMultiWindowMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mThumbnailType:I

    if-ne p0, v1, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mThumbnailType:I

    if-ne p0, v1, :cond_2

    const/4 p0, 0x7

    goto :goto_0

    :cond_2
    const/16 p0, 0x9

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalRatio:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x2

    goto :goto_0

    :cond_4
    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mThumbnailType:I

    if-ne p0, v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    move p0, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x5

    goto :goto_0

    :cond_7
    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mThumbnailType:I

    if-ne p0, v1, :cond_8

    const/4 p0, 0x3

    goto :goto_0

    :cond_8
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method private static interpolate(FFFF)F
    .locals 0

    invoke-static {p1, p2, p3, p0}, LB/e;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private isInMultiWindowMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private isLandscape()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeWindow(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isPortrait()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeWindow(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private setUp()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mDstViewForCustomRatio:Landroid/view/View;

    const-string v1, "OutroThumbnailView"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "[setUp] get ratio from thumbnail"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070b31

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070b32

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalWidth:F

    goto :goto_0

    :cond_0
    const-string v0, "[setUp] get ratio from target view"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mDstViewForCustomRatio:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalWidth:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mDstViewForCustomRatio:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalHeight:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalWidth:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalHeight:F

    div-float v4, v1, v3

    iput v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mOriginalRatio:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mReverseTabThumbnailRatio:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mMainToolbarHeightInitial:I

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mIsOrientationChanged:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mIsMultiWindowMode:Z

    return-void
.end method

.method private updateBitmapScale()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mIsDarkThemeEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->drawWithAnimationType(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mThumbnailType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mAnimationProgress:F

    return-void
.end method

.method public setCustomRatio(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mDstViewForCustomRatio:Landroid/view/View;

    return-void
.end method

.method public setDarkThemeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mIsDarkThemeEnabled:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setUp()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    const-string v0, "OutroThumbnailView"

    if-nez p1, :cond_1

    const-string p1, "Bitmap is null."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mThumbnailType:I

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_1
    const-string p1, "Bitmap is set."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapRatio:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mAnimationProgress:F

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mThumbnailType:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->getAnimationType()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mAnimationType:I

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->updateBitmapScale()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public setMarginX(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mMarginX:F

    return-void
.end method

.method public setMarginY(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->mMarginY:F

    return-void
.end method
