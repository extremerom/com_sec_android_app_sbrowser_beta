.class public Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;,
        Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;
    }
.end annotation


# instance fields
.field private final mApiType:Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;

.field private final mMessageListener:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->getApiType()Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getServerType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;->getMethod()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "contents_push_api_key.properties"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-API-KEY"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestPropertyHiddenOnLogging(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "response_code"

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->addResponseHeaderName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->mApiType:Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;

    return-void
.end method


# virtual methods
.method public getApiType()Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->mApiType:Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;

    return-object p0
.end method

.method public final getConnectTimeoutMs()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method public final getReadTimeoutMs()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method public getRequestBodyBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->mApiType:Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;->getBodyBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final onJsonObjectHttpError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseHeaders:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", response message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2, p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;->onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V

    return-void
.end method

.method public final onJsonObjectInvalidResponseError(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "onJsonObjectInvalidResponseError"

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;->onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V

    return-void
.end method

.method public final onJsonObjectJsonParsingError(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;

    const-string v1, "onJsonObjectJsonParsingError"

    invoke-interface {v0, p1, p2, v1, p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;->onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V

    return-void
.end method

.method public final onJsonObjectResponse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;->onSuccess(Landroid/content/Context;Ljava/util/Map;Lorg/json/JSONObject;)V

    return-void
.end method
