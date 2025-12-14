.class public Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mAcceptUserInput:Z

.field private final mBitmapScaleMatrix:Landroid/graphics/Matrix;

.field private final mContentSize:Landroid/util/Size;

.field private mIsAccessibilityEnabled:Lorg/chromium/base/supplier/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

.field private final mOnScaleListener:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUncommittedScaleFactor:F

.field private final mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;


# virtual methods
.method public scaleBy(FFF)Z
    .locals 7

    iget-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mAcceptUserInput:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mIsAccessibilityEnabled:Lorg/chromium/base/supplier/Supplier;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mUncommittedScaleFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v0

    iput v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mUncommittedScaleFactor:F

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    invoke-interface {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->onStartScaling()V

    :cond_2
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    invoke-interface {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->getMinScaleFactor()F

    move-result v0

    iget v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mUncommittedScaleFactor:F

    mul-float v3, v2, p1

    iput v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mUncommittedScaleFactor:F

    cmpg-float v4, v3, v0

    const/4 v5, 0x1

    if-gez v4, :cond_3

    cmpl-float v4, v2, v0

    if-lez v4, :cond_3

    div-float p1, v0, v2

    goto :goto_0

    :cond_3
    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v6, v3, v4

    if-lez v6, :cond_4

    cmpg-float v6, v2, v4

    if-gez v6, :cond_4

    div-float p1, v4, v2

    goto :goto_0

    :cond_4
    cmpl-float v6, v3, v0

    if-lez v6, :cond_5

    cmpg-float v6, v2, v0

    if-gez v6, :cond_5

    div-float p1, v3, v0

    goto :goto_0

    :cond_5
    cmpg-float v6, v3, v4

    if-gez v6, :cond_6

    cmpl-float v6, v2, v4

    if-lez v6, :cond_6

    div-float p1, v3, v4

    goto :goto_0

    :cond_6
    cmpg-float v0, v3, v0

    if-ltz v0, :cond_a

    cmpl-float v0, v2, v4

    if-lez v0, :cond_7

    goto/16 :goto_1

    :cond_7
    :goto_0
    mul-float/2addr v2, p1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->scale(FFF)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/16 p1, 0x9

    new-array p1, p1, [F

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransX()F

    move-result p2

    iget-object p3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransY()F

    move-result p3

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mContentSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mContentSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v4}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v3, p2, v0

    if-nez v3, :cond_8

    cmpl-float v3, p3, v1

    if-eqz v3, :cond_9

    :cond_8
    sub-float/2addr p2, v0

    sub-float/2addr p3, v1

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v3, v0, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setTrans(FF)V

    const/4 v0, 0x2

    aget v1, p1, v0

    add-float/2addr v1, p2

    aput v1, p1, v0

    const/4 p2, 0x5

    aget v0, p1, p2

    add-float/2addr v0, p3

    aput v0, p1, p2

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_9
    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->asRect()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result p3

    invoke-interface {p1, p2, p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->updateSubframes(Landroid/graphics/Rect;F)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mBitmapScaleMatrix:Landroid/graphics/Matrix;

    invoke-interface {p1, p2, v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->setBitmapScaleMatrix(Landroid/graphics/Matrix;F)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mOnScaleListener:Lorg/chromium/base/Callback;

    if-eqz p0, :cond_a

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_a
    :goto_1
    return v5
.end method

.method public scaleFinished(FFF)Z
    .locals 0

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    iget-object p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result p2

    invoke-interface {p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->updateScaleFactorOfAllSubframes(F)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->updateVisuals(Z)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    invoke-interface {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->forceRedrawVisibleSubframes()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mUncommittedScaleFactor:F

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->mOnScaleListener:Lorg/chromium/base/Callback;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return p2
.end method
