.class Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchMessage"
.end annotation


# instance fields
.field private final mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

.field private final mConnectionTimeoutMS:I

.field private final mReadTimeoutMS:I

.field private final mRequestBodyBytes:[B

.field private final mUseCache:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BZIILjava/util/Map;Ljava/util/Map;Ljava/util/Collection;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[BZII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mRequestBodyBytes:[B

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mUseCache:Z

    iput p5, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mConnectionTimeoutMS:I

    iput p6, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mReadTimeoutMS:I

    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestProperties(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestPropertiesHiddenOnLogging(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-interface {p9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->addResponseHeaderName(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iput-object p10, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

    return-void
.end method


# virtual methods
.method public getConnectTimeoutMs()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mConnectionTimeoutMS:I

    return p0
.end method

.method public getHttpResponse(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;
    .locals 0
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

    new-instance p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;-><init>(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    return-object p0
.end method

.method public getReadTimeoutMs()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mReadTimeoutMS:I

    return p0
.end method

.method public getRequestBodyBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mRequestBodyBytes:[B

    return-object p0
.end method

.method public onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

    iget p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseCode:I

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;->onFailed(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;->onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V

    return-void
.end method

.method public useCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;->mUseCache:Z

    return p0
.end method
