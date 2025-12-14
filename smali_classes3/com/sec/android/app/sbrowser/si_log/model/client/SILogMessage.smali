.class public Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$ServerProfile;,
        Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;
    }
.end annotation


# instance fields
.field private mMessageListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;->getMethod()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getInstance()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getServerType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$ServerProfile;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;->getApi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;

    const-string p1, "Accept"

    const-string p2, "application/json"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getInstance()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getServerType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "si_log_api_key.properties"

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-API-KEY"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestPropertyHiddenOnLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getConnectTimeoutMs()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method

.method public getHttpResponse(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/ByteArrayOutputStream;",
            ")",
            "Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;"
        }
    .end annotation

    const-string p0, "     - body: "

    :try_start_0
    const-string p1, "UTF-8"

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;->http(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;-><init>()V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    const/16 p2, 0x1389

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public getReadTimeoutMs()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method

.method public onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V
    .locals 2

    const-string v0, "SILogMessage"

    const-string v1, "Failed to send log"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseHeaders:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;->onHttpNotModified(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseHeaders:Ljava/util/Map;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->errorMessage:Ljava/lang/String;

    invoke-interface {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;->onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResponse(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;)V
    .locals 1

    const-string p2, "SILogMessage"

    const-string v0, "Succeeded to send log"

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;->onSuccess(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
