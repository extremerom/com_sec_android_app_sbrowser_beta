.class public abstract Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addResponseHeaderName(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->addResponseHeaderName(Ljava/lang/String;)V

    return-void
.end method

.method public final getHttpResponse(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;
    .locals 1
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
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;->http(Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;-><init>(Lorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    const/16 v0, 0x1388

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    return-object p2
.end method

.method public final onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V
    .locals 2

    iget v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseCode:I

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_0

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->onJsonObjectJsonParsingError(Landroid/content/Context;Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->onJsonObjectHttpError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V

    return-void
.end method

.method public abstract onJsonObjectHttpError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V
.end method

.method public abstract onJsonObjectInvalidResponseError(Landroid/content/Context;)V
.end method

.method public abstract onJsonObjectJsonParsingError(Landroid/content/Context;Ljava/util/Map;)V
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
.end method

.method public abstract onJsonObjectResponse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;)V
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
.end method

.method public final onResponse(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;)V
    .locals 1

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;->jsonObject:Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;->responseHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->onJsonObjectResponse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->onJsonObjectInvalidResponseError(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public setRequestPropertiesHiddenOnLogging(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestPropertiesHiddenOnLogging(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
