.class Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;

.field final synthetic val$fBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$thumbnailInfo:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;->this$1:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;->val$thumbnailInfo:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;->val$fBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;->this$1:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;->val$thumbnailInfo:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;->val$fBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->e(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;->val$thumbnailInfo:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mThumbnailReaquest:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mFilePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailHandler$1;->val$fBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;->onThumbnailRetrieved(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
