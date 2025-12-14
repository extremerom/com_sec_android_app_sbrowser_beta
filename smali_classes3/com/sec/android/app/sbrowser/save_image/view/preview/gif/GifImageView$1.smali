.class Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->a(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->a(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->a(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
