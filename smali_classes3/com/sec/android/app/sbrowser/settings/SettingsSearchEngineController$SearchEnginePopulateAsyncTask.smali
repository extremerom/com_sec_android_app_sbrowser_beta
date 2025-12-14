.class Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->e(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const-string p1, "SettingsSearchEngineController"

    const-string v0, "SearchEnginePopulateAsyncTask::doInBackground start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->e(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getListForSearchEngineNotAdded()Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->g(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Ljava/lang/String;)Z

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
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->c(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->i(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v3, "SearchEnginePopulateAsyncTask : no icon in local"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->f(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

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

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->f(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    const-string p0, "SearchEnginePopulateAsyncTask::doInBackground end"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
