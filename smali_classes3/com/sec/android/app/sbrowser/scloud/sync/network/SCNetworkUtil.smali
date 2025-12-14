.class public Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REQUEST_LOCK:Ljava/lang/Object;

.field private static final REQUEST_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SCNetworkUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->REQUEST_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->REQUEST_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->REQUEST_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->REQUEST_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelExecute(Ljava/lang/String;)V
    .locals 7

    const-string v0, "cancelExecute["

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "++"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->REQUEST_LOCK:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->REQUEST_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v6, :cond_2

    :try_start_1
    const-string v4, "%s mapSz[%d] Q%s"

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v4, v6

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    :try_start_2
    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->REQUEST_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " err"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    if-eqz v4, :cond_4

    :try_start_4
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->REQUEST_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    throw v0

    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static bridge synthetic d(Ljava/lang/String;IJLjava/io/InputStream;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Ljava/util/Map;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->extractResponse(Ljava/lang/String;IJLjava/io/InputStream;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Ljava/util/Map;)V

    return-void
.end method

.method public static execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;
    .locals 10
    .param p1    # Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "execute["

    const-string v2, "]"

    invoke-static {v1, v0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "++ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->createReqItem(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    move-result-object p0

    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    move-object v5, p1

    move-object v6, p0

    move-object v7, p2

    move-object v8, v0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil$1;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->TAG:Ljava/lang/String;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, p2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->sleep(Ljava/lang/String;Ljava/lang/String;J)Z

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, " response skip[pth canceled]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->isDone()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    :goto_1
    const-string v3, "-- "

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->outException:Ljava/lang/Object;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_7

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1, p2}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_7
    :try_start_1
    check-cast v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    throw v1

    :cond_8
    :goto_3
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->cancel()V

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->isCanceled()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_a

    :try_start_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->reqData:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->cancelExecute(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_a
    :try_start_3
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_USER_CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1, p2}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private static extractResponse(Ljava/lang/String;IJLjava/io/InputStream;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/io/InputStream;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "status error : "

    const-string v1, "extractResponse["

    const-string v2, "]"

    invoke-static {v1, p0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_2

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " responseCode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xce

    if-eq p1, v2, :cond_1

    const/16 v2, 0x134

    if-eq p1, v2, :cond_1

    const/16 v2, 0x190

    if-eq p1, v2, :cond_1

    const/16 p2, 0x1f4

    const-string p3, " There was a problem on the Backup Server. RESULT CODE:"

    if-eq p1, p2, :cond_0

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AND_RETRY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string p3, "HTTP_INTERNAL_ERROR, retry !!"

    invoke-direct {p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v0, p5

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;->handleResponse(IJLjava/io/InputStream;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->TAG:Ljava/lang/String;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, " OutOfMemoryError"

    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string p3, "extractResponse OutOfMemoryError"

    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method
