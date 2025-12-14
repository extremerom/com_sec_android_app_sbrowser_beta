.class Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->fromMimeType(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->isApplicationPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->h(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "DownloadThumbnail"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    move-object v1, v5

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    const-string p0, "Failed to get content URI"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->a(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->b(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    invoke-static {v0, v5}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->f(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load thumbnail from MediaStore "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->c(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;)I

    move-result v2

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->g(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_5
    if-ne v0, v3, :cond_8

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->f(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create video Thumbnail for file - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    move-object v0, v5

    :goto_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->d(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method
