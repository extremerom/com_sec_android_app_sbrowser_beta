.class Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/sdp/SdpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddEngineTask"
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
.field private final mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

.field private final mListener:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;->mListener:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const-string p1, "SdpController"

    const-string v0, "Start addEngine."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.app.sbrowser.beta"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->getParam()Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/samsung/android/knox/sdp/SdpDatabase;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/sdp/SdpDatabase;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getPassword()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->g(Lcom/samsung/android/knox/sdp/SdpDatabase;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->e()V

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->lock(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->g(Lcom/samsung/android/knox/sdp/SdpDatabase;I)V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addEngine error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "addEngine result : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "SdpController"

    const-string v1, "AddEngineTask::onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;->mListener:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;->onResult(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;->secretDbExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SdpController"

    const-string v1, "remove unnecessary database files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SBrowserInternalProvider;->deleteDatabase(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
