.class Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArticleImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mSavedImage:Landroid/graphics/Bitmap;

.field private mSavedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedImage:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_1

    if-lez v1, :cond_1

    if-le p3, v0, :cond_1

    sub-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p2, p3, v0, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedImage:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedImage:Landroid/graphics/Bitmap;

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const-string p1, "SavedPageModel"

    const-string v0, "ArticleImageTask - doInBackground"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedImage:Landroid/graphics/Bitmap;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2

    const-string p1, "ArticleImageTask - onPostExecute start"

    const-string v0, "SavedPageModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->savePage()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->FAILED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$ArticleImageTask;->mSavedImage:Landroid/graphics/Bitmap;

    :cond_1
    const-string p0, "ArticleImageTask - onPostExecute end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
