.class Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->loadImageBitmapFromCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

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
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setBitmap(Landroid/graphics/Bitmap;Z)V
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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setBitmap(Landroid/graphics/Bitmap;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :goto_3
    return-void
.end method
