.class Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->connect(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$callback:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;

.field final synthetic val$webApkPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->this$0:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    iput-object p2, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->val$callback:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;

    iput-object p3, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->val$webApkPackage:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->doInBackground()Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;
    .locals 5

    new-instance v0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;

    iget-object v1, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->this$0:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    invoke-direct {v0, v1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;-><init>(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;)V

    iget-object v1, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->val$callback:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;

    invoke-virtual {v0, v1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->addCallback(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;)V

    iget-object v1, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->this$0:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    iget-object v2, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->val$webApkPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->c(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->val$appContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string v0, "WebApkServiceConnectionManager"

    const-string v1, "Security failed binding."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;

    invoke-virtual {p0, p1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->onPostExecute(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;)V

    return-void
.end method

.method public onPostExecute(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->val$callback:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;->onConnected(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->this$0:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    invoke-static {v0}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->b(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;->val$webApkPackage:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
