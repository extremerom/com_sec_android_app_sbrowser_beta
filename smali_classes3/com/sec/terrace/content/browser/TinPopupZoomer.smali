.class abstract Lcom/sec/terrace/content/browser/TinPopupZoomer;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinPopupZoomer$ReverseInterpolator;,
        Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;,
        Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;
    }
.end annotation


# static fields
.field private static sOverlayCornerRadius:F

.field private static sOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private static sOverlayPadding:Landroid/graphics/Rect;


# instance fields
.field private mAnimating:Z

.field private mAnimationStartTime:J

.field private mBottomExtrusion:F

.field private mClipRect:Landroid/graphics/RectF;

.field private mDrawRect:Landroid/graphics/RectF;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mLeftExtrusion:F

.field private mMaxScrollX:F

.field private mMaxScrollY:F

.field private mMinScrollX:F

.field private mMinScrollY:F

.field private mNeedsToInitDimensions:Z

.field private final mOnTapListener:Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;

.field private final mOnVisibilityChangedListener:Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;

.field private mPopupScrollX:F

.field private mPopupScrollY:F

.field private mRightExtrusion:F

.field private mScale:F

.field private mShiftX:F

.field private mShiftY:F

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowing:Z

.field private mTargetBounds:Landroid/graphics/Rect;

.field private mTimeLeft:J

.field private mTopExtrusion:F

.field private final mTouch:Landroid/graphics/PointF;

.field private final mZoomBoundsMargin:I

.field private mZoomedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/sec/terrace/content/browser/TinPopupZoomer$ReverseInterpolator;

    invoke-direct {v0, p2}, Lcom/sec/terrace/content/browser/TinPopupZoomer$ReverseInterpolator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mHideInterpolator:Landroid/view/animation/Interpolator;

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftX:F

    iput p2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftY:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mScale:F

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTouch:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/sec/terrace/R$dimen;->popupzoomer_zoom_bounds_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomBoundsMargin:I

    iput-object p3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mOnVisibilityChangedListener:Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;

    iput-object p4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mOnTapListener:Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    new-instance p2, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;

    invoke-direct {p2, p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;-><init>(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V

    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/content/browser/TinPopupZoomer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mAnimating:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/content/browser/TinPopupZoomer;)Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mOnTapListener:Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/TinPopupZoomer;FF)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->convertTouchPoint(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private convertTouchPoint(FF)Landroid/graphics/PointF;
    .locals 3

    iget v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftX:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftY:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    iget v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollX:F

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mScale:F

    div-float/2addr p1, v2

    add-float/2addr p1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollY:F

    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float/2addr p2, v0

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/content/browser/TinPopupZoomer;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->isTouchOutsideArea(FF)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/content/browser/TinPopupZoomer;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->scroll(FF)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->tappedInside()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->tappedOutside()V

    return-void
.end method

.method private static getOverlayCornerRadius(Landroid/content/Context;)F
    .locals 2

    sget v0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/sec/terrace/R$dimen;->link_preview_overlay_radius:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sput p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayCornerRadius:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "TinPopupZoomer"

    const-string v0, "No corner radius resource for PopupZoomer overlay found."

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x3f800000    # 1.0f

    sput p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayCornerRadius:F

    :cond_0
    :goto_0
    sget p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayCornerRadius:F

    return p0
.end method

.method private static getOverlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/sec/terrace/R$drawable;->ondemand_overlay:I

    invoke-static {p0, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "TinPopupZoomer"

    const-string v0, "No drawable resource for PopupZoomer overlay found."

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    sput-object p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    sput-object p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    sget-object v0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    sget-object p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private hideImmediately()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mAnimating:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTimeLeft:J

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mOnVisibilityChangedListener:Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;->onPopupZoomerHidden(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private initDimensions()V
    .locals 9

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTouch:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mScale:F

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v1, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomBoundsMargin:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->getContentOffsetYPix()F

    move-result v5

    add-float/2addr v3, v5

    iget v5, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomBoundsMargin:I

    sub-int v6, v0, v5

    int-to-float v6, v6

    int-to-float v1, v1

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->getContentOffsetYPix()F

    move-result v7

    add-float/2addr v5, v7

    sub-float v5, v1, v5

    invoke-direct {v2, v4, v3, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftX:F

    iput v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftY:F

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomBoundsMargin:I

    int-to-float v7, v6

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1

    int-to-float v0, v6

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftX:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget v5, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget v7, v4, Landroid/graphics/RectF;->right:F

    sub-int v8, v0, v6

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    sub-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr v0, v7

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftX:F

    add-float/2addr v7, v0

    iput v7, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    :cond_2
    :goto_0
    iget v0, v4, Landroid/graphics/RectF;->top:F

    int-to-float v4, v6

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->getContentOffsetYPix()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    iget v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomBoundsMargin:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->getContentOffsetYPix()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftY:F

    add-float/2addr v4, v0

    iput v4, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomBoundsMargin:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->getContentOffsetYPix()F

    move-result v5

    add-float/2addr v4, v5

    sub-float v4, v1, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    iget v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomBoundsMargin:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->getContentOffsetYPix()F

    move-result v4

    add-float/2addr v0, v4

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftY:F

    add-float/2addr v4, v1

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iput v4, v0, Landroid/graphics/RectF;->top:F

    :cond_4
    :goto_1
    iput v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMaxScrollY:F

    iput v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMinScrollY:F

    iput v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMaxScrollX:F

    iput v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMinScrollX:F

    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftX:F

    add-float v3, v0, v1

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMinScrollX:F

    :cond_5
    iget v0, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget v3, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMaxScrollX:F

    :cond_6
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftY:F

    add-float v3, v0, v1

    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMaxScrollY:F

    :cond_7
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iget v3, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_8

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMinScrollY:F

    :cond_8
    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float v3, v1, v3

    iput v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mLeftExtrusion:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mRightExtrusion:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, v3

    iput v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTopExtrusion:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mBottomExtrusion:F

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMaxScrollX:F

    iget v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMinScrollX:F

    sub-float v4, v0, v2

    iget v5, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMaxScrollY:F

    iget v6, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMinScrollY:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollX:F

    mul-float/2addr v5, v3

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollY:F

    invoke-static {v4, v2, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollX:F

    iget v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollY:F

    iget v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMinScrollY:F

    iget v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMaxScrollY:F

    invoke-static {v0, v1, v2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollY:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisambiguationPopupPosition "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LogForTest"

    invoke-static {v3, v0, v2}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DisambiguationPopupHeight "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private isTouchOutsideArea(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private recordHistogram(I)V
    .locals 1

    const-string p0, "Touchscreen.TapDisambiguation"

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method private scroll(FF)V
    .locals 2

    iget v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollX:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMinScrollX:F

    iget v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMaxScrollX:F

    invoke-static {v0, p1, v1}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->constrain(FFF)F

    move-result p1

    iput p1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollX:F

    iget p1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollY:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMinScrollY:F

    iget v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mMaxScrollY:F

    invoke-static {p1, p2, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->constrain(FFF)F

    move-result p1

    iput p1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setTargetBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private startAnimation(Z)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mAnimating:Z

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowing:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTimeLeft:J

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mNeedsToInitDimensions:Z

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mOnVisibilityChangedListener:Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;->onPopupZoomerShown(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mAnimationStartTime:J

    const-wide/16 v5, 0x12c

    add-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTimeLeft:J

    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    iput-wide v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTimeLeft:J

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mAnimationStartTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private tappedInside()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->startAnimation(Z)V

    return-void
.end method

.method private tappedOutside()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->recordHistogram(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->startAnimation(Z)V

    return-void
.end method


# virtual methods
.method public acceptZeroSizeView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public backButtonPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->recordHistogram(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->startAnimation(Z)V

    return-void
.end method

.method public abstract getContentOffsetYPix()F
.end method

.method public hide(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->recordHistogram(I)V

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->startAnimation(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->hideImmediately()V

    :goto_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mAnimating:Z

    if-eqz p0, :cond_0

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

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->acceptZeroSizeView()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mNeedsToInitDimensions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mNeedsToInitDimensions:Z

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->initDimensions()V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTimeLeft:J

    add-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->constrain(FFF)F

    move-result v0

    cmpl-float v2, v0, v3

    if-ltz v2, :cond_4

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mAnimating:Z

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->isShowing()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->hideImmediately()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    iget-boolean v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowing:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :goto_0
    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p1, v2, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mScale:F

    sub-float v4, v2, v3

    mul-float/2addr v4, v0

    div-float/2addr v4, v2

    div-float v5, v3, v2

    add-float/2addr v5, v4

    iget v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftX:F

    neg-float v4, v4

    sub-float/2addr v3, v0

    mul-float/2addr v4, v3

    div-float/2addr v4, v2

    iget v6, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShiftY:F

    neg-float v6, v6

    mul-float/2addr v6, v3

    div-float/2addr v6, v2

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mLeftExtrusion:F

    mul-float/2addr v8, v5

    sub-float v8, v7, v8

    add-float/2addr v8, v4

    iput v8, v2, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTopExtrusion:F

    mul-float/2addr v8, v5

    sub-float v8, v3, v8

    add-float/2addr v8, v6

    iput v8, v2, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mRightExtrusion:F

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    add-float/2addr v8, v4

    iput v8, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mBottomExtrusion:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v5, v5, v3, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollX:F

    iget v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mPopupScrollY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->getOverlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v3, p0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    sget-object v4, Lcom/sec/terrace/content/browser/TinPopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, p0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    invoke-virtual {v2, v3, v5, v6, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0xff

    invoke-static {p0, v1, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->constrain(III)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->getOverlayCornerRadius(Landroid/content/Context;)F

    move-result p0

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p0, p0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setLastTouch(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mTouch:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->getContentOffsetYPix()F

    move-result p0

    add-float/2addr p2, p0

    iput p2, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->setTargetBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->startAnimation(Z)V

    :cond_1
    :goto_0
    return-void
.end method
