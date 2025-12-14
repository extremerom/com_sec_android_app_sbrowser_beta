.class Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SavedPageDeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private deleteSavedPageDirectory(Landroid/content/Context;)V
    .locals 6

    const-string p0, "SavedPageController"

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getSaveWebPageDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSavedPageDirectory - unable to delete file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while deleting saved page directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 8

    const-string p1, "SavedPageController"

    const-string v0, "SavedPage DeleteTask doInBackground start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Context is released"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;->isSelectAllSavedPageList()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SavedPage DeleteTask delete All doInBackground"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->getSavedPageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->deleteSavedPageDirectory(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->clearSavedPageDeleteList()V

    goto :goto_1

    :cond_1
    const-string v3, "SavedPage DeleteTask delete selected doInBackground"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->c(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->getSavedPageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getDirPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->d(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->destroy()V

    goto :goto_0

    :cond_4
    :goto_1
    const-string p0, "SavedPage DeleteTask doInBackground end"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->CANCELLED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->mContext:Ljava/lang/ref/WeakReference;

    const-string p0, "SavedPageController"

    const-string v0, "SavedPageDeleteTask is cancelled"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPostExecute(Ljava/lang/Long;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->e(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;->showProgress()V

    return-void
.end method
