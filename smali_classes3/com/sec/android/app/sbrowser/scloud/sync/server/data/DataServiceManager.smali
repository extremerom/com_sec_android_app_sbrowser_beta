.class Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceManager$API;
    }
.end annotation


# direct methods
.method public static deleteRecords(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    const-string v3, "deleteRecords!!!!!!!!!! - "

    const-string v4, "DataServiceManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/data/v2/"

    const-string v6, "?action=delete&"

    move-object/from16 v7, p3

    invoke-static {v3, v5, v7, v6}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "condition"

    const-string v6, "modified_time lt modified_time"

    invoke-static {v3, v5, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "table_ver"

    invoke-static {v3, v6, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v10, 0x14

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "application/json"

    const-string v15, "POST"

    const-string v7, "records"

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "record_id"

    move-object/from16 p5, v6

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "modified_time"

    move-object/from16 v16, v14

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTimeStamp()J

    move-result-wide v13

    invoke-virtual {v6, v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-long v13, v9

    add-long/2addr v10, v13

    const-wide/32 v13, 0xa00000

    cmp-long v9, v10, v13

    if-gez v9, :cond_0

    const/16 v9, 0x1f4

    if-lt v12, v9, :cond_1

    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v15}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, v16

    invoke-virtual {v7, v9, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setPayload(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {v5, v2, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v10, 0x14

    const/4 v12, 0x0

    :cond_1
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v4, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "err key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_PARSE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v9, v14

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v15}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object v1

    const-string v3, "x-sc-uid"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object v1

    const-string v3, "x-sc-access-token"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setPayload(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_PARSE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readChangedRecords(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IZZLcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    .locals 1

    const-string p1, "DataServiceManager"

    const-string v0, "readChangedRecords!!!!!!!!!! - "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/data/v2/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3f

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-static {p5, p6, v0, p3}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "changed_after"

    invoke-static {p1, p5, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "coldStartable"

    invoke-static {p10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p3, p5}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "offset"

    invoke-static {p1, p3, p7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "limit"

    invoke-static {p1, p5, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "select"

    const-string p5, "record_id,modified_time"

    invoke-static {p1, p3, p5}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "meta"

    invoke-static {p1, p5, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "table_ver"

    invoke-static {p1, p4, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "GET"

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    const-string p2, "x-sc-uid"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    const-string p2, "x-sc-access-token"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->checkIsWifiOnlySetting(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->WIFI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setWifiOption(Z)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p11, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void
.end method

.method public static readRecords(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    .locals 1

    const-string p1, "DataServiceManager"

    const-string v0, "readRecord!!!!!!!!!! - "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/data/v2/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x3f

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p4, "record_id"

    invoke-static {p1, p4, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "table_ver"

    invoke-static {p1, p4, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "GET"

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    const-string p2, "x-sc-uid"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    const-string p2, "x-sc-access-token"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->checkIsWifiOnlySetting(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->WIFI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setWifiOption(Z)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p6, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void
.end method

.method public static updateRecords(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    .locals 0

    const-string p1, "DataServiceManager"

    const-string p7, "updateRecords!! - "

    invoke-static {p1, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getBaseUrl()Ljava/lang/String;

    move-result-object p7

    invoke-direct {p1, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p7, "/data/v2/"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3f

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "condition"

    const-string p7, "modified_time lt modified_time"

    invoke-static {p1, p3, p7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p6, ""

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p7, "upsert"

    invoke-static {p1, p7, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "table_ver"

    invoke-static {p1, p4, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->create(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PUT"

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    const-string p2, "x-sc-uid"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p1

    const-string p2, "x-sc-access-token"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    const-string p1, "application/json"

    invoke-virtual {p0, p1, p5}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setPayload(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->checkIsWifiOnlySetting(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->WIFI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setWifiOption(Z)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    invoke-virtual {p0, p8, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;)V

    return-void
.end method
