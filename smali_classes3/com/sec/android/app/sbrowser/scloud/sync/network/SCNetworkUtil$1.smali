.class Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$fn:Ljava/lang/String;

.field final synthetic val$handler:Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;

.field final synthetic val$parentUth:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

.field final synthetic val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

.field final synthetic val$request:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$request:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$handler:Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$fn:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$parentUth:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "request is redirected : "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->a()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$request:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Queue;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$request:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$request:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->build()Ljava/net/HttpURLConnection;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$handler:Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->set(Ljava/net/HttpURLConnection;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$fn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", responseCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_7

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_7

    const/16 v0, 0x190

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_23

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :catch_2
    move-exception v0

    goto/16 :goto_16

    :catch_3
    move-exception v0

    goto/16 :goto_1d

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->cb:Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->cb:Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;

    move v4, v2

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->d(Ljava/lang/String;IJLjava/io/InputStream;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v3, "invalid response handler"

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$fn:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " response but skip[already canceled]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->done(I)V
    :try_end_2
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    :cond_6
    :goto_5
    monitor-exit v0

    goto/16 :goto_21

    :goto_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_7
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->setURL(Ljava/lang/String;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AND_RETRY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v3

    :cond_8
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v3, "connection is null"

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_7
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$parentUth:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$fn:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ex "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_a
    :goto_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$fn:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ex "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but already canceled msg["

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v3, v4, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->outException:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :catchall_3
    move-exception p0

    goto :goto_e

    :cond_d
    :goto_d
    monitor-exit v0

    goto/16 :goto_21

    :goto_e
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p0

    :goto_f
    :try_start_d
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$parentUth:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_10

    :cond_e
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$fn:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timeoutEx "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_f
    :goto_10
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$fn:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timeoutEx "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but already canceled"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP_TIMEOUT:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v3, v4, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->outException:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_11

    :try_start_f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_13

    :catch_9
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_13
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :catchall_4
    move-exception p0

    goto :goto_15

    :cond_12
    :goto_14
    monitor-exit v0

    goto/16 :goto_21

    :goto_15
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw p0

    :goto_16
    :try_start_11
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$parentUth:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_17

    :cond_13
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$fn:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " socketEx "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_14
    :goto_17
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$fn:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " socketEx "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but already canceled"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP_CONNECTION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v3, v4, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->outException:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    if-eqz v0, :cond_15

    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_19

    :catch_a
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_16

    :try_start_13
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_1a

    :catch_b
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_1a
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_17

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :catchall_5
    move-exception p0

    goto :goto_1c

    :cond_17
    :goto_1b
    monitor-exit v0

    goto :goto_21

    :goto_1c
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw p0

    :goto_1d
    :try_start_15
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iput-object v0, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->outException:Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    iget-object v0, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    if-eqz v0, :cond_18

    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_1e

    :catch_c
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_19

    :try_start_17
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    goto :goto_1f

    :catch_d
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_1f
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :catchall_6
    move-exception p0

    goto :goto_22

    :cond_1a
    :goto_20
    monitor-exit v0

    :goto_21
    return-void

    :goto_22
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    throw p0

    :goto_23
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1b

    :try_start_19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    goto :goto_24

    :catch_e
    move-exception v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iput-object v1, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resStream:Ljava/io/InputStream;

    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1c

    :try_start_1a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    goto :goto_25

    :catch_f
    move-exception v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_25
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1b
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    if-eqz v2, :cond_1d

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->b()Ljava/util/HashMap;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;->val$req:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :catchall_7
    move-exception p0

    goto :goto_27

    :cond_1d
    :goto_26
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    throw v0

    :goto_27
    :try_start_1c
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    throw p0
.end method
