.class Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static deleteFile(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "deleteFile!!!!!!!!!! - "

    const-string v2, ", key : "

    invoke-static {v1, p9, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/ors/v2/tx/rm/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, p5, p6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getServerFilePathPrefix(ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p8, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "revision"

    invoke-static {v1, p3, p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "ctid"

    invoke-static {v1, p2, p9, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object p5, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    aput-object p5, p4, v0

    invoke-static {p0, p2, p3, p1, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    const-string p1, "DELETE"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p10, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :cond_1
    const-string p0, "There is NO Base URL."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public static deleteFolder(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "deleteFolder!!!!!!!!!! - "

    const-string v2, ", path : "

    const-string v3, "ORSServiceManager"

    invoke-static {v1, p7, v2, p5, v3}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/ors/v2/tx/rmdir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p6, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "revision"

    invoke-static {v1, p3, p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "ctid"

    invoke-static {v1, p2, p7, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object p5, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    aput-object p5, p4, v0

    invoke-static {p0, p2, p3, p1, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    const-string p1, "DELETE"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p8, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :cond_1
    const-string p0, "There is NO Base URL."

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public static downloadFile(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/FileResponseHandler;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "downloadFile!!!!!!!!!! - "

    const-string v2, ", key : "

    invoke-static {v1, p7, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p3, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getServerFilePathPrefix(ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/ors/v2/download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, p3, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getServerFilePathPrefix(ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "?"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p6, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "revision"

    invoke-static {v1, p4, p3, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_0
    const-string p3, "ctid"

    invoke-static {v1, p3, p7, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object p5, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    aput-object p5, p4, v0

    invoke-static {p0, p2, p3, p1, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->checkIsWifiOnlySetting(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->WIFI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setWifiOption(Z)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p8, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :cond_1
    const-string p0, "There is NO Base URL."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public static getTimestamp(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTimestamp!!!!!!!!!! - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/ors/v2/timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ctid"

    invoke-static {v1, v2, p3, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    aput-object v2, v1, v0

    invoke-static {p0, p2, p3, p1, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p4, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :cond_0
    const-string p0, "There is NO Base URL."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public static listDirectory(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;ILjava/lang/String;IJZLcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    .locals 3

    const/4 p7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listDirectory!!!!!!!!!! - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORSServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/ors/v2/ls"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "coldStartable"

    invoke-static {p10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p10

    invoke-static {v0, p4, p10}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/16 p10, 0x26

    invoke-virtual {p4, p10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    cmp-long p4, p8, v1

    const-string p10, ""

    if-lez p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p8, "modified_after"

    invoke-static {v0, p8, p4, p7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_0
    if-lez p5, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "revision"

    invoke-static {v0, p5, p4, p7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "start"

    invoke-static {v0, p4, p6, p7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_2
    const-string p4, "ctid"

    invoke-static {v0, p4, p2, p7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object p5, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    aput-object p5, p4, p7

    invoke-static {p0, p2, p3, p1, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p11, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :cond_3
    const-string p0, "There is NO Base URL."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public static transactionEnd(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transactionEnd!!!!!!!!!! - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/ors/v2/tx/end/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "tx_count"

    invoke-static {v1, p3, p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    const-string p2, "ctid"

    invoke-static {v1, p2, p4, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object p4, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    aput-object p4, p3, v0

    invoke-static {p0, p5, p2, p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    const-string p1, "POST"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p6, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :cond_0
    const-string p0, "There is NO Base URL."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public static transactionStart(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transactionStart!!!!!!!!!! - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/ors/v2/tx/start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ctid"

    invoke-static {v1, v2, p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    aput-object v2, v1, v0

    invoke-static {p0, p3, p2, p1, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    const-string p1, "POST"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p4, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :cond_0
    const-string p0, "There is NO Base URL."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public static updateTag(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "updateTimestamp!!!!!!!!!! - "

    const-string v2, ", key : "

    invoke-static {v1, p8, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/ors/v2/tx/chdir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4, v0, p5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getServerFilePathPrefix(ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p7, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "revision"

    invoke-static {v1, p3, p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "tag"

    invoke-static {v1, p2, p6, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    const-string p2, "ctid"

    invoke-static {v1, p2, p8, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object p5, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    aput-object p5, p4, v0

    invoke-static {p0, p2, p3, p1, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    const-string p1, "POST"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p9, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :cond_1
    const-string p0, "There is NO Base URL."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public static uploadFile(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "uploadFile!!!!!!!!!! - "

    const-string v2, ", key : "

    invoke-static {v1, p10, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/ors/v2/tx/upload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, p5, p6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getServerFilePathPrefix(ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p9, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "revision"

    invoke-static {v1, p3, p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p8, :cond_1

    const-string p2, "tag"

    invoke-static {v1, p2, p8, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "ctid"

    invoke-static {v1, p2, p10, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, p0, p6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getLocalFilePathPrefix(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    :try_start_0
    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    new-array p5, p5, [Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    sget-object p6, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    aput-object p6, p5, v0

    invoke-static {p0, p3, p4, p1, p5}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;[Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    const-string p3, "PUT"

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    const-string p3, "application/octet-stream"

    invoke-virtual {p1, p3, p2, p11}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setPayload(Ljava/lang/String;Ljava/io/File;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->checkIsWifiOnlySetting(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->WIFI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setWifiOption(Z)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p12, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_FILE_IO:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    throw p0

    :cond_2
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_FILE_IO:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "File not exists : "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p0, p6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getLocalFilePathPrefix(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, "There is NO Base URL."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method
