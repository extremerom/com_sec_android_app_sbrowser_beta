.class Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->handleRequest(ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;

.field final synthetic val$responseMeta:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;

.field final synthetic val$tmpTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->val$responseMeta:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->val$tmpTag:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(ILjava/lang/String;)V
    .locals 5

    const-string v0, "HTTPEXCEPTION, rcode is "

    const-string v1, "Body = "

    const/16 v2, 0xc8

    const-string v3, "JSON PARSER Exception"

    if-eq p1, v2, :cond_4

    const/16 v1, 0x190

    const-string v2, "rcode"

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->val$tmpTag:Ljava/lang/String;

    const-string v3, "HTTPEXCEPTION : "

    invoke-static {p1, v3, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->val$tmpTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->val$tmpTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "JSON PARSER Exception "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_1
    const/4 v0, -0x1

    if-eqz p2, :cond_3

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x4a40

    if-eq v1, v0, :cond_2

    const/16 v1, 0x4a4a

    if-ne v1, v0, :cond_3

    :cond_2
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_BAD_ACCESS_TOKEN:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, v0, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->val$tmpTag:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_JSON:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "HTTP_BAD_REQUEST["

    const-string v2, "] rcode["

    const-string v3, "]"

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eqz p2, :cond_5

    :try_start_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->val$responseMeta:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->val$responseMeta:Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;->fromJSON(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$2;->val$tmpTag:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OUT_OF_MEMORY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :catch_3
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_JSON:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void
.end method
