.class Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;
.super Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDataDownloader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->setImageItem(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;->val$item:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDataDownloader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;->onPostExecute([B)V

    return-void
.end method

.method public onPostExecute([B)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;->val$item:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setGifData([B)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->setBytes([B)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->startAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->m(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;)V

    return-void
.end method
