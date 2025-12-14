.class Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBitmapMatrix:[[Landroid/graphics/Bitmap;

.field private mDestroyed:Z

.field private mDrawBitmapDst:Landroid/graphics/Rect;

.field private mDrawBitmapSrc:Landroid/graphics/Rect;

.field private mFirstPaintListener:Ljava/lang/Runnable;

.field private mTileSize:Landroid/util/Size;

.field private mViewPort:Landroid/graphics/Rect;


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-gtz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v0, "PlayerFrameBitmapPainter.onDraw"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v2, v2

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-double v4, v4

    iget-object v6, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    array-length v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v2, v5, :cond_4

    iget-object v5, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    add-int/lit8 v7, v2, -0x1

    aget-object v5, v5, v7

    array-length v5, v5

    goto :goto_0

    :cond_4
    move v5, v6

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    if-ge v1, v2, :cond_8

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_7

    iget-object v7, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    aget-object v7, v7, v1

    aget-object v7, v7, v5

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object v8, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    mul-int/2addr v9, v5

    sub-int/2addr v8, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    mul-int/2addr v10, v1

    sub-int/2addr v9, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    iget-object v11, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    mul-int/2addr v12, v5

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    iget-object v12, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v13

    mul-int/2addr v13, v1

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v12, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mDrawBitmapSrc:Landroid/graphics/Rect;

    invoke-virtual {v12, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v8, v5

    iget-object v9, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mTileSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v9, v1

    iget-object v10, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mViewPort:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mDrawBitmapSrc:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v10, v8

    iget-object v11, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mDrawBitmapSrc:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mDrawBitmapDst:Landroid/graphics/Rect;

    invoke-virtual {v12, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mDrawBitmapSrc:Landroid/graphics/Rect;

    iget-object v9, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mDrawBitmapDst:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mFirstPaintListener:Ljava/lang/Runnable;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    iput-object v10, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->mFirstPaintListener:Ljava/lang/Runnable;

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method
