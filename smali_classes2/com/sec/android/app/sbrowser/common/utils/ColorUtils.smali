.class public Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getColorTransformFilter(IF)Landroid/graphics/ColorFilter;
    .locals 7

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    mul-float/2addr p0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p1, v2, p1

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v4, v6

    const/4 v6, 0x2

    aput v5, v4, v6

    const/4 v6, 0x3

    aput v5, v4, v6

    const/4 v6, 0x4

    aput v0, v4, v6

    const/4 v0, 0x5

    aput v5, v4, v0

    const/4 v0, 0x6

    aput p1, v4, v0

    const/4 v0, 0x7

    aput v5, v4, v0

    const/16 v0, 0x8

    aput v5, v4, v0

    const/16 v0, 0x9

    aput v1, v4, v0

    const/16 v0, 0xa

    aput v5, v4, v0

    const/16 v0, 0xb

    aput v5, v4, v0

    const/16 v0, 0xc

    aput p1, v4, v0

    const/16 p1, 0xd

    aput v5, v4, p1

    const/16 p1, 0xe

    aput p0, v4, p1

    const/16 p0, 0xf

    aput v5, v4, p0

    const/16 p0, 0x10

    aput v5, v4, p0

    const/16 p0, 0x11

    aput v5, v4, p0

    const/16 p0, 0x12

    aput v2, v4, p0

    const/16 p0, 0x13

    aput v5, v4, p0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance p0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p0, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object p0
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;)I
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static getDominantColor(Landroid/graphics/Bitmap;Z)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/16 v5, 0xff

    if-nez v0, :cond_0

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :cond_0
    const/16 v6, 0x24

    new-array v7, v6, [I

    new-array v8, v6, [F

    new-array v9, v6, [F

    new-array v6, v6, [F

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v10, :cond_6

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_5

    invoke-virtual {v0, v14, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    const/16 v3, 0x80

    if-ge v5, v3, :cond_1

    goto :goto_2

    :cond_1
    new-array v3, v2, [F

    invoke-static {v15, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    if-eqz p1, :cond_2

    aget v5, v3, v4

    const v15, 0x3eb33333    # 0.35f

    cmpg-float v5, v5, v15

    if-lez v5, :cond_4

    aget v5, v3, v1

    cmpg-float v5, v5, v15

    if-gtz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    aget v15, v3, v5

    const/high16 v16, 0x41200000    # 10.0f

    div-float v15, v15, v16

    float-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v2, v8, v1

    aget v15, v3, v5

    add-float/2addr v2, v15

    aput v2, v8, v1

    aget v2, v9, v1

    aget v5, v3, v4

    add-float/2addr v2, v5

    aput v2, v9, v1

    aget v2, v6, v1

    const/4 v5, 0x2

    aget v3, v3, v5

    add-float/2addr v2, v3

    aput v2, v6, v1

    aget v2, v7, v1

    add-int/2addr v2, v4

    aput v2, v7, v1

    if-ltz v12, :cond_3

    aget v3, v7, v12

    if-le v2, v3, :cond_4

    :cond_3
    move v12, v1

    :cond_4
    :goto_2
    add-int/2addr v14, v4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/16 v5, 0xff

    goto :goto_1

    :cond_5
    add-int/2addr v13, v4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/16 v5, 0xff

    goto :goto_0

    :cond_6
    if-gez v12, :cond_7

    const/16 v0, 0xff

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :cond_7
    aget v0, v8, v12

    aget v1, v7, v12

    int-to-float v2, v1

    div-float/2addr v0, v2

    aget v2, v9, v12

    int-to-float v3, v1

    div-float/2addr v2, v3

    aget v3, v6, v12

    int-to-float v1, v1

    div-float/2addr v3, v1

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v5, 0x0

    aput v0, v1, v5

    aput v2, v1, v4

    const/4 v0, 0x2

    aput v3, v1, v0

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static getDominantColor([B)I
    .locals 7

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "ColorUtils"

    const-string v1, "bitmapByteArray is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getLuminance(I)D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpg-double v0, v3, v5

    if-ltz v0, :cond_1

    const-wide v5, 0x406f600000000000L    # 251.0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    :cond_1
    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return v1
.end method

.method private static getLuminance(I)D
    .locals 6

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v0, p0

    const-wide v4, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static getMonochromeAverageColor(Landroid/graphics/Bitmap;I)I
    .locals 8

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/16 v6, 0x64

    if-ge v2, v6, :cond_1

    add-int/lit8 v6, p1, -0x1

    invoke-static {v1, v6}, Lcom/sec/android/app/sbrowser/common/utils/decoder/RandomUtils;->nextInt(II)I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/common/utils/decoder/RandomUtils;->nextInt(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    add-int/2addr v3, v7

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v7

    add-int/2addr v4, v7

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v4

    add-int/2addr v3, v5

    div-int/lit16 v3, v3, 0x12c

    const/16 p0, 0xff

    invoke-static {p0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_2
    :goto_1
    return p1
.end method

.method public static getOpaqueColor(I)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static getTransformedColor(IIF)I
    .locals 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    mul-float/2addr v0, v4

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    mul-float/2addr v1, v4

    mul-float/2addr v3, p2

    add-float/2addr v3, v1

    mul-float/2addr p0, v4

    mul-float/2addr p2, p1

    add-float/2addr p2, p0

    float-to-int p0, v2

    float-to-int p1, v3

    float-to-int p2, p2

    invoke-static {p0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method
