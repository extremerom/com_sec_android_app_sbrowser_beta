.class public Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;
.super Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

.field private mGifDataDownloader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDataDownloader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->lambda$setImageItem$0(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method private synthetic lambda$setImageItem$0(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->setImageItem(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->mGifDataDownloader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDataDownloader;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

    return-void
.end method

.method public setCallBack(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

    return-void
.end method

.method public setImageItem(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/barcode_detect/b;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;I)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->addCallBack(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060968

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isGif()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getGifData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getGifData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->setBytes([B)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->startAnimation()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->mGifDataDownloader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDataDownloader;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$1;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->mGifDataDownloader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDataDownloader;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getImageSrc()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060974

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->setZoomable(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const v0, 0x7f08037c

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060975

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;->onImageUpdated(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    :cond_5
    return-void
.end method
