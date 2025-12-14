.class public Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;
.super Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KVSServiceManager"


# instance fields
.field mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    return-void
.end method


# virtual methods
.method public deleteItems(Ljava/util/List;)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/kvs/?action=delete&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ctid"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUriParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;

    :try_start_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->toJSON()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "JSON PARSER Exception"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_JSON:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v7

    const/4 v1, 0x0

    const/16 v6, 0xd9

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "There is NO Base URL."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public getItems(Ljava/util/List;)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/kvs/item?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ctid"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUriParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v10

    const/4 v5, 0x1

    const/16 v9, 0xd5

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "There is NO Base URL."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public getKeys(Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/kvs/keys?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&start="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&coldStartable=true&view=snapshot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ctid"

    invoke-static {v1, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUriParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v8

    const/4 v3, 0x1

    const/16 v7, 0xd3

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "There is NO Base URL."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public getServerTimeStamp()J
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/kvs/timestamp?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ctid"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUriParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v9

    const/4 v4, 0x1

    const/16 v8, 0xd7

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->getServerTimeStamp()J

    move-result-wide v0

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string v2, " The server time stamp received is "

    invoke-static {v0, v1, v2, p0}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "There was an error in the request.Error Response code obtained"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "There is NO Base URL."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public getUpdates(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/kvs/updates?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&start_timestamp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&coldStartable=true"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "key"

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUrlParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "&count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ctid"

    invoke-static {v1, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUriParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v8

    const/4 v3, 0x1

    const/16 v7, 0xd4

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "There is NO Base URL."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public setItems(Ljava/util/List;)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/kvs/?action=set&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getApiParamsWithCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ctid"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addUriParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RecordDataItem Size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;->toJSON()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "JSON PARSER Exception"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_JSON:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getCtid()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCloudServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;->getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v7

    const/4 v1, 0x0

    const/16 v6, 0xd8

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->mKVSResponse:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "There is NO Base URL."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method
