.class Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewDelegate;
.implements Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBitmapScaleMatrix:Landroid/graphics/Matrix;

.field private final mBitmapStateController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;

.field private final mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

.field private final mContentSize:Landroid/util/Size;

.field private mGestureListener:Lorg/chromium/components/paintpreview/player/PlayerGestureListener;

.field private final mGuid:Lorg/chromium/base/UnguessableToken;

.field private mInitialScaleFactor:F

.field private mInitialViewportSizeAvailable:Ljava/lang/Runnable;

.field private mIsSubframe:Z

.field private mMinScaleFactor:F

.field private final mModel:Lorg/chromium/ui/modelutil/PropertyModel;

.field private final mOffsetForScaling:Landroid/graphics/Point;

.field private mScaledRectIntersection:Landroid/graphics/Rect;

.field private final mSubFrameMediators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubFrameRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubFrameScaledRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubFrameViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;


# direct methods
.method private adjustInitialScaleFactor(F)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mContentSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mMinScaleFactor:F

    iget v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mInitialScaleFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iput p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mInitialScaleFactor:F

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    iget v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mInitialScaleFactor:F

    invoke-direct {v0, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->setInitialScaleFactor(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scaleRect(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setInitialScaleFactor(F)V
    .locals 2

    iput p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mInitialScaleFactor:F

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    iget v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mInitialScaleFactor:F

    invoke-direct {v0, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->setInitialScaleFactor(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSubframeBitmapTileSizeRecursive(Landroid/util/Size;)V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mIsSubframe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->overrideTileSize(II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    invoke-direct {v1, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->updateSubframeBitmapTileSizeRecursive(Landroid/util/Size;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public forceRedraw()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->updateVisuals(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    invoke-virtual {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->forceRedraw()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forceRedrawVisibleSubframes()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    invoke-virtual {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->forceRedraw()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMinScaleFactor()F
    .locals 0

    iget p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mMinScaleFactor:F

    return p0
.end method

.method public offsetBitmapScaleMatrix(FF)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    sub-float/2addr v2, p1

    aput v2, v0, v1

    const/4 p1, 0x5

    aget v1, v0, p1

    sub-float/2addr v1, p2

    aput v1, v0, p1

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->setBitmapScaleMatrix(Landroid/graphics/Matrix;F)V

    :cond_0
    return-void
.end method

.method public onLongPress(II)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mGestureListener:Lorg/chromium/components/paintpreview/player/PlayerGestureListener;

    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/PlayerGestureListener;->onLongPress()V

    return-void
.end method

.method public onStartScaling()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mOffsetForScaling:Landroid/graphics/Point;

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapStateController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->onStartScaling()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    invoke-virtual {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->onStartScaling()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSwapState()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapStateController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->getBitmapState(Z)Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mOffsetForScaling:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->setBitmapScaleMatrix(Landroid/graphics/Matrix;F)V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->TILE_DIMENSIONS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->getTileDimensions()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->OFFSET:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getOffset()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->VIEWPORT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    iget-boolean v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mIsSubframe:Z

    invoke-virtual {v3, v4}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getVisibleViewport(Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v1, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->BITMAP_MATRIX:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->getMatrix()[[Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public onTap(IIZ)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransX()F

    move-result v2

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransY()F

    move-result v1

    :goto_1
    iget-object p3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mGuid:Lorg/chromium/base/UnguessableToken;

    int-to-float p1, p1

    add-float/2addr v2, p1

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    add-float/2addr v1, p2

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-interface {p3, v3, p1, p2}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;->onClick(Lorg/chromium/base/UnguessableToken;II)Lorg/chromium/url/GURL;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mGestureListener:Lorg/chromium/components/paintpreview/player/PlayerGestureListener;

    invoke-virtual {p0, p1}, Lorg/chromium/components/paintpreview/player/PlayerGestureListener;->onTap(Lorg/chromium/url/GURL;)V

    return-void
.end method

.method public setBitmapScaleMatrix(Landroid/graphics/Matrix;F)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x4

    aget v0, v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->setBitmapScaleMatrixOfSubframe(Landroid/graphics/Matrix;F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object p2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->SCALE_MATRIX:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p0}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setBitmapScaleMatrixOfSubframe(Landroid/graphics/Matrix;F)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v0

    div-float v0, p2, v0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->OFFSET:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mOffsetForScaling:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mOffsetForScaling:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    iget-boolean v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mIsSubframe:Z

    invoke-virtual {v0, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getVisibleViewport(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->updateSubframes(Landroid/graphics/Rect;F)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->setBitmapScaleMatrix(Landroid/graphics/Matrix;F)V

    return-void
.end method

.method public setLayoutDimensions(II)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setSize(II)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mIsSubframe:Z

    if-nez v0, :cond_1

    int-to-float v0, p1

    invoke-direct {p0, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->adjustInitialScaleFactor(F)V

    new-instance v0, Landroid/util/Size;

    int-to-float v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->updateSubframeBitmapTileSizeRecursive(Landroid/util/Size;)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    iget v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mInitialScaleFactor:F

    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->updateViewportSize(IIF)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mInitialViewportSizeAvailable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mInitialViewportSizeAvailable:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method public setVisibleRegion(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setVisibleRegion(IIII)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    iget-boolean p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mIsSubframe:Z

    invoke-virtual {p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->isVisible(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapStateController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;

    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->deleteAll()V

    :cond_0
    return-void
.end method

.method public updateBitmapMatrix([[Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->BITMAP_MATRIX:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public updateScaleFactor(F)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v1, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setScale(F)V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransX()F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransY()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setTrans(FF)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    invoke-virtual {v1, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->updateScaleFactor(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateScaleFactorOfAllSubframes(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    invoke-virtual {v1, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->updateScaleFactor(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateSubframes(Landroid/graphics/Rect;F)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameRects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameScaledRects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameRects:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-direct {p0, v4, v3, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->scaleRect(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mScaledRectIntersection:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mScaledRectIntersection:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    invoke-virtual {v4, v1, v1, v1, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->setVisibleRegion(IIII)V

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mScaledRectIntersection:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameMediators:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    iget-object v7, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mScaledRectIntersection:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mScaledRectIntersection:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v6, v5, v4, v7, v8}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->setVisibleRegion(IIII)V

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object p2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->SUBFRAME_RECTS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameScaledRects:Ljava/util/List;

    invoke-virtual {p1, p2, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object p2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->SUBFRAME_VIEWS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mSubFrameViews:Ljava/util/List;

    invoke-virtual {p1, p2, p0}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public updateViewportSize(IIF)V
    .locals 4

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mContentSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mContentSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setTrans(FF)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setSize(II)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result p1

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p2, p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setScale(F)V

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->updateVisuals(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateVisuals(Z)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getWidth()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapStateController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;

    invoke-virtual {v1, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->getBitmapState(Z)Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    iget-boolean v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mIsSubframe:Z

    invoke-virtual {v1, v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getVisibleViewport(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->updateSubframes(Landroid/graphics/Rect;F)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mBitmapStateController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;

    invoke-virtual {v0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->isVisible(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->TILE_DIMENSIONS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-virtual {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->getTileDimensions()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->OFFSET:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getOffset()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->VIEWPORT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->requestBitmapForRect(Landroid/graphics/Rect;)V

    :cond_4
    :goto_0
    return-void
.end method
