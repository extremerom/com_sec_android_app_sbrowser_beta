.class public Lorg/chromium/shape_detection/BitmapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static convertToBitmap(Lorg/chromium/skia/mojom/BitmapN32;)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lorg/chromium/skia/mojom/BitmapN32;->pixelData:Lorg/chromium/mojo_base/mojom/BigBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/chromium/skia/mojom/BitmapN32;->imageInfo:Lorg/chromium/skia/mojom/BitmapN32ImageInfo;

    iget v2, p0, Lorg/chromium/skia/mojom/BitmapN32ImageInfo;->width:I

    iget p0, p0, Lorg/chromium/skia/mojom/BitmapN32ImageInfo;->height:I

    int-to-long v3, v2

    int-to-long v5, p0

    mul-long/2addr v3, v5

    if-lez v2, :cond_4

    if-lez p0, :cond_4

    const-wide v5, 0x1fffffffffffffffL

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/chromium/mojo_base/BigBufferUtil;->map(Lorg/chromium/mojo_base/mojom/BigBuffer;)Lorg/chromium/mojo_base/BigBufferUtil$Mapping;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/mojo_base/BigBufferUtil$Mapping;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v4, :cond_2

    invoke-virtual {v0}, Lorg/chromium/mojo_base/BigBufferUtil$Mapping;->close()V

    return-object v1

    :cond_2
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lorg/chromium/mojo_base/BigBufferUtil$Mapping;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Lorg/chromium/mojo_base/BigBufferUtil$Mapping;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static convertToFrame(Lorg/chromium/skia/mojom/BitmapN32;)LS5/d;
    .locals 3

    invoke-static {p0}, Lorg/chromium/shape_detection/BitmapUtils;->convertToBitmap(Lorg/chromium/skia/mojom/BitmapN32;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, LS5/d;

    invoke-direct {v0}, LS5/d;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput-object p0, v0, LS5/d;->c:Landroid/graphics/Bitmap;

    iget-object p0, v0, LS5/d;->a:LS5/c;

    iput v1, p0, LS5/c;->a:I

    iput v2, p0, LS5/c;->b:I

    return-object v0
.end method
