.class Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;

.field final synthetic val$url:Ljava/lang/String;


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$1;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object p0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$1;->val$url:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$1;->this$0:Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;

    invoke-static {p1}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->a(Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$1;->val$url:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
