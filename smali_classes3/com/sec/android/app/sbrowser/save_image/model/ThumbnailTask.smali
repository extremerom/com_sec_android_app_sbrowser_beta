.class public Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final mBitmapHandler:Landroid/os/Handler;

.field private final mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

.field private final mSize:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    iput p2, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mSize:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mBitmapHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->lambda$run$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V
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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mBitmapHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mSize:I

    invoke-static {v0, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ThumbnailTask : cannot create thumbnail bitmap : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailTask"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->mBitmapHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v3, 0xd

    invoke-direct {v2, v3, p0, v0}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
