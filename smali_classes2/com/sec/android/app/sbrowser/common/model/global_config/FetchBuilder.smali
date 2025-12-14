.class public Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdditionalParameters:Ljava/lang/String;

.field private mConnectionTimeoutMS:I

.field private final mGlobalConfigFeature:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

.field private final mHttpUrlConnectionOpenerForTesting:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

.field private mIUIDForTesting:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mMethod:Ljava/lang/String;

.field private mReadTimeoutMS:I

.field private mRequestBodyBytes:[B

.field private final mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestHeadersHiddenOnLogging:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

.field private final mResponseHeaderFilter:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field private mUseCache:Z

.field private mUseETag:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mIUIDForTesting:Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mGlobalConfigFeature:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    const-string v2, "GET"

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mKey:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->getFieldTypeMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    if-eq v2, v3, :cond_0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUrl:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestBodyBytes:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUseCache:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUseETag:Z

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x7

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mReadTimeoutMS:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mConnectionTimeoutMS:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestHeaders:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestHeadersHiddenOnLogging:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mResponseHeaderFilter:Ljava/util/Collection;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mHttpUrlConnectionOpenerForTesting:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

    return-void
.end method

.method private addETag(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mGlobalConfigFeature:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mKey:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->getETag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    :cond_0
    const-string p1, "ETag"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addResponseHeaderFilter(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    return-void
.end method

.method private fetchInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V
    .locals 13

    :try_start_0
    new-instance v11, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mMethod:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestBodyBytes:[B

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUseCache:Z

    iget v5, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mConnectionTimeoutMS:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mReadTimeoutMS:I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestHeaders:Ljava/util/Map;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestHeadersHiddenOnLogging:Ljava/util/Map;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mResponseHeaderFilter:Ljava/util/Collection;

    new-instance v10, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mGlobalConfigFeature:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mKey:Ljava/lang/String;

    invoke-direct {v10, v0, v12, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;-><init>(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[BZIILjava/util/Map;Ljava/util/Map;Ljava/util/Collection;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mHttpUrlConnectionOpenerForTesting:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

    if-eqz p0, :cond_0

    invoke-virtual {v11, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setHttpUrlConnectionOpenerForTesting(Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;)V

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->GLOBAL_CONFIG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {p1, v11, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/MessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "FetchBuilder"

    const-string v0, "Failed to fetch: Malformed url"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;->onFailed(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private getApiCookiesIfNeeded(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getServerProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigUtils;->getBaseDomainMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getApiCookies(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, "&"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    return-object p0
.end method

.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRequestHeaderHiddenOnLogging(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestHeadersHiddenOnLogging:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestHeadersHiddenOnLogging:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addResponseHeaderFilter(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mResponseHeaderFilter:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FetchBuilder"

    const-string v0, "Failed to fetch: Invalid field type or empty string"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;->onFailed(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUseETag:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addETag(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUrl:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->getApiCookiesIfNeeded(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Cookie"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addRequestHeaderHiddenOnLogging(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "?"

    goto :goto_1

    :cond_3
    const-string v1, "&"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "av="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getAndroidVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceManufacturer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetRelease(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&iv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&mo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&dt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&oc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getOperatorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&cc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getClientType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mIUIDForTesting:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "&iu="

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mIUIDForTesting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetchInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mAdditionalParameters:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetchInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetchInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    :goto_2
    return-void
.end method

.method public setIUIDForTesting(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mIUIDForTesting:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestParamsForTesting(Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mRequestParams:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    return-object p0
.end method

.method public setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->mUseETag:Z

    return-object p0
.end method
