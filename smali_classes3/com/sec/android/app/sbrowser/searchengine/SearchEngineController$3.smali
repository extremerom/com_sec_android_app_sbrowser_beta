.class Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->addItem(Landroid/content/Context;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;
    .locals 6

    const-string p1, "SearchEngineController"

    const-string v0, "addItem::doInBackground start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_updated"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->i(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->setFavicon(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "url = ? "

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "addItem : doInBackground try to insert found item"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v3

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->doInBackground([Ljava/lang/Void;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 3

    const-string v0, "addItem::onPostExecute start"

    const-string v1, "SearchEngineController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "addItem : Already exist or failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->c(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "addItem onPostExecute : MainActivity may be destroyed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->b(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;->onUpdateSearchEngineButtonIcon(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->d(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->getAdapter()Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "addItem : successfully updated"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->d(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->getAdapter()Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->updateFavicon(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;->onPostExecute(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    return-void
.end method
