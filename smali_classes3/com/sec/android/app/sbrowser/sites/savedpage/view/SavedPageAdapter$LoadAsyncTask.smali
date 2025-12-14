.class Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadAsyncTask"
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
.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDominantText:Ljava/lang/String;

.field private mId:I

.field private mPosition:I

.field private mSavedPageAdapterWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mVH:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Landroid/content/Context;IILjava/lang/String;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mSavedPageAdapterWeakReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mId:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mDominantText:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mVH:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mPosition:I

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4

    const-string p1, "SavedPageAdapter"

    const-string v0, "LoadAsyncTask::doInBackground"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mSavedPageAdapterWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getSavedPageUi()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getSavedPageUi()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->getSavedPageImageFetcher()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    move-result-object v2

    :try_start_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->getImageFromDB(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mVH:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageImage:Landroid/widget/ImageView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object p1

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IllegalArgumentException"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public isVisiblePosition(II)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mPosition:I

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "LoadAsyncTask::onPostExecute"

    const-string v1, "SavedPageAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mVH:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDominantText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mDominantText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f06097f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mVH:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mVH:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDimmedView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mVH:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDominantText:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const-string p0, "LoadAsyncTask : image is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->mVH:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
