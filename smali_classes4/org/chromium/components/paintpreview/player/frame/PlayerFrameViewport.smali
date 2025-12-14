.class public Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mMatrixValues:[F

.field private final mOffset:Landroid/graphics/Point;

.field private mTileSize:Landroid/util/Size;

.field private mTileSizeOverridden:Z

.field private final mViewportRect:Landroid/graphics/Rect;

.field private mViewportSize:Landroid/util/Size;

.field private final mViewportTransform:Landroid/graphics/Matrix;

.field private final mVisibleRegion:Landroid/graphics/Rect;

.field private final mVisibleViewport:Landroid/graphics/Rect;


# direct methods
.method private setTileSize(II)V
    .locals 2

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x9c4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mTileSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public asRect()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getBitmapTileSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mTileSize:Landroid/util/Size;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOffset()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mOffset:Landroid/graphics/Point;

    return-object p0
.end method

.method public getScale()F
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getTransX()F
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getTransY()F
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    const/4 v0, 0x5

    aget p0, p0, v0

    return p0
.end method

.method public getVisibleViewport(Z)Landroid/graphics/Rect;
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->asRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mVisibleRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mVisibleRegion:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->asRect()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mVisibleRegion:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mVisibleViewport:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mVisibleRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v0, p1, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mVisibleViewport:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0
.end method

.method public isVisible(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mVisibleRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public offset(FF)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public overrideTileSize(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setTileSize(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mTileSizeOverridden:Z

    return-void
.end method

.method public scale(FFF)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {p0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-void
.end method

.method public setScale(F)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportSize:Landroid/util/Size;

    iget-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mTileSizeOverridden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->setTileSize(II)V

    return-void
.end method

.method public setTrans(FF)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mMatrixValues:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 p1, 0x5

    aput p2, v0, p1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mViewportTransform:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public setVisibleRegion(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mVisibleRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->mOffset:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
