.class public Lorg/chromium/ui/gfx/BitmapHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method private static createBitmap(IIIZ)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p2}, Lorg/chromium/ui/gfx/BitmapHelper;->getBitmapConfigForFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object p2

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_0

    const-string p1, "BitmapHelper"

    const-string p2, "createBitmap OOM-ed"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p0
.end method

.method private static getBitmapConfigForFormat(I)Landroid/graphics/Bitmap$Config;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method private static getBitmapFormatForConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/ui/gfx/BitmapHelper$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x7

    return p0

    :cond_2
    const/16 p0, 0x8

    return p0
.end method

.method private static getByteCount(Landroid/graphics/Bitmap;)I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0
.end method
