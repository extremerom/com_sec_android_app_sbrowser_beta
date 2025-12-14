.class public final LZ3/j;
.super LZ3/e;
.source "SourceFile"


# static fields
.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    sget-object v1, LQ3/g;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, LZ3/j;->b:[B

    return-void
.end method


# virtual methods
.method public final a(LT3/a;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    sget-object p0, LZ3/C;->a:Landroid/graphics/Paint;

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p3, p0

    const/high16 p4, 0x40000000    # 2.0f

    div-float v0, p3, p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v1, v1

    div-float v3, p3, v1

    int-to-float v2, v2

    div-float v4, p3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v1, v3

    mul-float/2addr v3, v2

    sub-float v2, p3, v1

    div-float/2addr v2, p4

    sub-float/2addr p3, v3

    div-float/2addr p3, p4

    new-instance p4, Landroid/graphics/RectF;

    add-float/2addr v1, v2

    add-float/2addr v3, p3

    invoke-direct {p4, v2, p3, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p1, p2}, LZ3/C;->c(LT3/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {p1, p0, p0, v1}, LT3/a;->l(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget-object v1, LZ3/C;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, LZ3/C;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v0, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v0, LZ3/C;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1, p3}, LT3/a;->d(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, LZ3/j;

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x41aadb8c

    return p0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0

    sget-object p0, LZ3/j;->b:[B

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
