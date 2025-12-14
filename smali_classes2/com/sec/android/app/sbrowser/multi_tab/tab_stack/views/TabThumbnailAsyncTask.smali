.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$Delegate;,
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$AsyncDrawable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$Delegate;

.field private final mId:I

.field private final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static getLoadAsyncTask(Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$AsyncDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$AsyncDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$AsyncDrawable;->getLoadAsyncTask()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$Delegate;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;->mId:I

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$Delegate;->getThumbnailBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;->getLoadAsyncTask(Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;

    move-result-object v1

    if-ne p0, v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
