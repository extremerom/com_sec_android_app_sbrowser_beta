.class Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddItemAsyncTask"
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
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mItem:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mItem:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mItem:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;
    .locals 5

    const-string p1, "SettingsSearchEngineController"

    const-string v0, "addItem::doInBackground"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mItem:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_updated"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->h(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "image"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mItem:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mItem:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->setFavicon(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "url = ? "

    invoke-virtual {v1, v3, p1, v4, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mItem:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->mItem:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 2

    const-string v0, "SettingsSearchEngineController"

    const-string v1, "addItem::onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->destroy()V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->onCancelled(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    return-void
.end method

.method public onPostExecute(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 2

    const-string v0, "SettingsSearchEngineController"

    const-string v1, "addItem::onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->destroy()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->d(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    const-string p0, "addItem : Already exist or failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->e(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "addItem onPostExecute : MainActivity may be destroyed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;->onPostExecute(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    return-void
.end method
