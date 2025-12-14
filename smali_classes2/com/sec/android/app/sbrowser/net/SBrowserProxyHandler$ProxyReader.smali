.class Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    const-string p1, "SBrowserProxyHandler"

    const-string v0, "ProxyReader::doInBackground"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->getMDMProxy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SBrowserProxyHandler"

    const-string v1, "ProxyReader::onPostExecute start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->b(Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->a(Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->c(Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;Ljava/lang/String;)V

    :cond_1
    const-string p0, "ProxyReader::onPostExecute end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
