.class public abstract Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field protected mCid:Ljava/lang/String;

.field protected mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mAppContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NETWORK CANCEL, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V

    return-void
.end method

.method public handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V
    .locals 6

    const-string v0, "json = "

    const-string v1, "AbstractServiceManager["

    const-string v2, "]"

    invoke-static {v1, p5, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "API Code is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p6, Ljava/lang/StringBuilder;

    const-string v1, "handleRequest : "

    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v1, "AbstractServiceManager"

    invoke-static {v1, p6}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p6, v1, p2, p7, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p2

    iget-object p6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mAppContext:Landroid/content/Context;

    invoke-static {p6}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->checkIsWifiOnlySetting(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p6

    sget-object p7, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->WIFI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    invoke-virtual {p7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    invoke-virtual {p2, p6}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setWifiOption(Z)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p2

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string p2, "Wrong Request."

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "POST"

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    const-string p6, "application/json"

    invoke-virtual {p1, p6, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setPayload(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    :goto_0
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;

    invoke-direct {p1, p0, p3, p5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "json is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "IOException occured while Http Request, caused by : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method
