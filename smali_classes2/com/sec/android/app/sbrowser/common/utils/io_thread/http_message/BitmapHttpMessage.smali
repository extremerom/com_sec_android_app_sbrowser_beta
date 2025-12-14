.class public abstract Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;
    }
.end annotation


# virtual methods
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

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;

    array-length p2, p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p1
.end method

.method public abstract onBitmapResponse(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;)V
.end method

.method public final onResponse(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;)V
    .locals 2

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage;->onBitmapResponse(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    const/4 v0, 0x0

    const-string v1, "Invalid bitmap response type"

    invoke-direct {p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V

    :goto_0
    return-void
.end method

.method public useCache()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
