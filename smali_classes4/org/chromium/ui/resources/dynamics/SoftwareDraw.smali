.class public Lorg/chromium/ui/resources/dynamics/SoftwareDraw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter$CaptureMechanism;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# virtual methods
.method public onViewSizeChange(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public startBitmapCapture(Landroid/view/View;Landroid/graphics/Rect;FLorg/chromium/ui/resources/dynamics/CaptureObserver;Lorg/chromium/base/Callback;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "F",
            "Lorg/chromium/ui/resources/dynamics/CaptureObserver;",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "SoftwareDraw:syncCaptureBitmap"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v7

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v9, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v8

    :goto_1
    if-eqz v9, :cond_2

    move v1, v8

    move v2, v1

    :cond_2
    iget-object v4, p0, Lorg/chromium/ui/resources/dynamics/SoftwareDraw;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v1, :cond_3

    iget-object v4, p0, Lorg/chromium/ui/resources/dynamics/SoftwareDraw;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v2, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/chromium/ui/resources/dynamics/SoftwareDraw;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/chromium/ui/resources/dynamics/SoftwareDraw;->mBitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v4, p0, Lorg/chromium/ui/resources/dynamics/SoftwareDraw;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    invoke-static {v1, v2}, Lorg/chromium/ui/resources/dynamics/CaptureUtils;->createBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/ui/resources/dynamics/SoftwareDraw;->mBitmap:Landroid/graphics/Bitmap;

    :cond_5
    if-nez v9, :cond_6

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/chromium/ui/resources/dynamics/SoftwareDraw;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/chromium/ui/resources/dynamics/CaptureUtils;->captureCommon(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;FZLorg/chromium/ui/resources/dynamics/CaptureObserver;)Z

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/SoftwareDraw;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v3, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    :goto_3
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/SoftwareDraw;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v9, 0x1

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_7
    return v0

    :goto_4
    if-eqz v7, :cond_8

    :try_start_1
    invoke-virtual {v7}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw v1
.end method
