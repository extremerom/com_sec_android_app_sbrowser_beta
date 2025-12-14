.class public Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder$HttpMethod;
    }
.end annotation


# static fields
.field private static final BASE_CONFIG:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

.field private static final RETRY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HttpRequestBuilder"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBaseCreator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBaseCreator;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->BASE_CONFIG:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->RETRY_MAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AND_RETRY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP_TIMEOUT:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP_CONNECTION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-direct {p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    return-void
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "HttpRequestBuilder create dvc id : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cloud_device_id"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getStringValuePrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "x-sc-dvc-id"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getStringValuePrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    const-string p0, "x-sc-uid"

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    const-string p0, "x-sc-access-token"

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->BASE_CONFIG:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;->configure(Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    array-length p0, p4

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object p2, p4, p1

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;->configure(Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "create() context is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method private executeRetry(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeRetry["

    const-string v2, "]"

    invoke-static {v1, v0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->checkIsWifiOnlySetting(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->WIFI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-interface {p2, v3, v4, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resultCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " done! ["

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getRequestCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "execute ["

    const-string v2, "]"

    invoke-static {v1, v0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_USER_CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_2
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-interface {p2, v4, v5, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;->resultCode()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " done["

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v3, p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_3
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->RETRY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "retry ... "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    if-lez v2, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_USER_CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_5
    :goto_5
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->executeRetry(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v3

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_6
    move-object v3, v0

    :goto_7
    if-nez v3, :cond_7

    return-void

    :cond_7
    throw v3
.end method

.method public setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->setMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public setPayload(Ljava/lang/String;Ljava/io/File;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->setPayload(Ljava/lang/String;Ljava/io/File;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V

    return-object p0
.end method

.method public setPayload(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->setPayload(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRequestTimeout(I)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->setTimeout(I)V

    return-object p0
.end method

.method public setWifiOption(Z)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->mRequest:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->setWifiOption(Ljava/lang/String;)V

    return-object p0
.end method
