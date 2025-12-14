.class public Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final mBitmapHandler:Landroid/os/Handler;

.field private final mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->mBitmapHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->lambda$run$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$run$0(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setBitmap(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setBitmap(Landroid/graphics/Bitmap;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :goto_3
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->mBitmapHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "ImageLoadTask : cannot get bitmap from URL : "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getImageSrc()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    :goto_1
    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v3, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v3, v1

    goto :goto_4

    :catch_2
    move-exception v4

    move-object v2, v1

    move-object v3, v2

    :goto_2
    :try_start_3
    const-string v5, "ImageLoadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->mBitmapHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p0, v1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_4
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
