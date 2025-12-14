.class Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->updateImageViewAfter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$3;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$3;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->g(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$3;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->e(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$3;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->i(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$3;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->e(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$3;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->q(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    return-void
.end method
