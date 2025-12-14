.class Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private mSavedPageId:Ljava/lang/String;

.field private mSavedPageItemBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->mSavedPageItemBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->mSavedPageId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "SavedPageImageFetcher"

    const-string v2, "BitmapWorkerTask::doInBackground start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->mSavedPageId:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;)Landroid/util/LruCache;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->mSavedPageId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->mSavedPageItemBitmap:Landroid/graphics/Bitmap;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->c(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;)Landroid/util/LruCache;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask$1;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    const-string p0, "BitmapWorkerTask::doInBackground end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method
