.class Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchEnginePopulateAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->c(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const-string p1, "SearchEngineController"

    const-string v0, "SearchEnginePopulateAsyncTask::doInBackground start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->c(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getListForSearchEngineListPopupAdapter()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->h(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SearchEnginePopulateAsyncTask : Ready to show : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->a(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->j(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->g(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x2932e00

    cmp-long v3, v5, v3

    if-lez v3, :cond_4

    const-string v3, "SearchEnginePopulateAsyncTask : UPDATE_PERIOD"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->g(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "SearchEngineController"

    const-string v1, "SearchEnginePopulateAsyncTask::onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->c(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->b(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;->onUpdateSearchEngineButtonIcon(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
