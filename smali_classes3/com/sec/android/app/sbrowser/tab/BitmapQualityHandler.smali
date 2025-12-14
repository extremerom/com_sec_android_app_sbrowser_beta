.class public Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# instance fields
.field private final mCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->mCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->useLowQualityBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private isLowQualityBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static useLowQualityBitmap()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useLowQualityBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/TabManagerGlobalConfigUtils;->useLowQualityBitmap()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceivedBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->useLowQualityBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->mCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->isLowQualityBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->mCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    const-string v0, "BitmapQualityHandler"

    const-string v1, "degraded to low quality bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->mCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    invoke-interface {p0, v0}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedImageBytes([BZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->mCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedImageBytes([BZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
