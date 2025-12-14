.class Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->register(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

.field final synthetic val$callback:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;

.field final synthetic val$webappId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->this$0:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->val$webappId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->val$callback:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground()Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->val$webappId:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->open(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getLastUsedTimeMs()J

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->doInBackground()Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->this$0:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->b(Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->val$webappId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->this$0:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->a(Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->this$0:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    invoke-static {v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->b(Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "webapp_set"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateLastUsedTime()V

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->val$callback:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;->onWebappDataStorageRetrieved(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;->onPostExecute(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    return-void
.end method
