.class Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;)Landroid/util/LruCache;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SavedPageImageFetcher"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
