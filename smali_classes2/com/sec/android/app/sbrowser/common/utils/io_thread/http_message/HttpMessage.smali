.class public abstract Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;,
        Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;,
        Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;
    }
.end annotation


# static fields
.field public static final NO_TIMEOUT:I = -0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mHttpUrlConnectionOpener:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

.field private final mMethod:Ljava/lang/String;

.field private final mRequestProperties:Ljava/util/Map;
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

.field private final mRequestPropertiesKeyToHideValueOnLogging:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponseHeaderName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->DISORDER:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;-><init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mMethod:Ljava/lang/String;

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mUrl:Ljava/net/URL;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mRequestProperties:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mRequestPropertiesKeyToHideValueOnLogging:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mResponseHeaderName:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    const-string p1, "This is not a http or https URL: "

    invoke-static {p1, p2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1;-><init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mHttpUrlConnectionOpener:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

    return-void
.end method

.method private getBody(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 3

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addResponseHeaderName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mResponseHeaderName:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getConnectTimeoutMs()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public abstract getHttpResponse(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;
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
.end method

.method public getReadTimeoutMs()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getRequestBodyBytes()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequestBodyStringForLogging()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public abstract onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V
.end method

.method public abstract onResponse(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;)V
.end method

.method public final onResult(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V
    .locals 2

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->onResponse(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    const/4 v0, 0x0

    const-string v1, "Invalid result type"

    invoke-direct {p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V

    :goto_0
    return-void
.end method

.method public runOnIOThread(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "HttpMessage: socket timeout exception - "

    const-string v3, "HttpMessage: io exception - "

    const-string v4, "HttpMessage: unexpected exception - "

    const-string v5, "Req: "

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->useCache()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;

    invoke-direct {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->open()V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v10, 0x1

    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mMethod:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;->http(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mHttpUrlConnectionOpener:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

    iget-object v11, v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mUrl:Ljava/net/URL;

    invoke-virtual {v5, v11}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;->open(Ljava/net/URL;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->getConnectTimeoutMs()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->getConnectTimeoutMs()I

    move-result v11

    invoke-interface {v5, v11}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->setConnectTimeout(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto/16 :goto_13

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto/16 :goto_14

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto/16 :goto_15

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->getReadTimeoutMs()I

    move-result v11

    if-eq v11, v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->getReadTimeoutMs()I

    move-result v11

    invoke-interface {v5, v11}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->setReadTimeout(I)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->useCache()Z

    move-result v11

    invoke-interface {v5, v11}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->setUseCaches(Z)V

    iget-object v11, v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mRequestProperties:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, ": "

    const-string v14, "     - "

    if-eqz v12, :cond_6

    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, v9, v8}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mRequestPropertiesKeyToHideValueOnLogging:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": ..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;->http(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;->http(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v7, v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mMethod:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->setRequestMethod(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v7, :cond_7

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->getRequestBodyBytes()[B

    move-result-object v7

    if-eqz v7, :cond_8

    array-length v8, v7

    if-lez v8, :cond_8

    invoke-interface {v5, v10}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->setDoOutput(Z)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v8, v7}, Ljava/io/OutputStream;->write([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "     - body: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->getRequestBodyStringForLogging()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;->http(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    :goto_4
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v1
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    :goto_5
    :try_start_6
    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->getResponseCode()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Res: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;->http(Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mResponseHeaderName:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v11, :cond_b

    :try_start_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v5, v11}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->getHeaderFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;->http(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v10, 0x1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto/16 :goto_11

    :catch_3
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto/16 :goto_f

    :catch_6
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto/16 :goto_10

    :cond_b
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_d

    :try_start_8
    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Http error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v9, v8}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v7, 0x0

    :try_start_9
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_c
    return-object v1

    :catchall_4
    move-exception v0

    const/4 v7, 0x0

    :goto_8
    move-object v1, v0

    goto/16 :goto_11

    :catch_7
    move-exception v0

    const/4 v7, 0x0

    :goto_9
    move-object v1, v0

    goto :goto_d

    :catch_8
    move-exception v0

    const/4 v7, 0x0

    :goto_a
    move-object v1, v0

    goto :goto_e

    :catch_9
    move-exception v0

    const/4 v7, 0x0

    :goto_b
    move-object v1, v0

    goto/16 :goto_f

    :catch_a
    move-exception v0

    const/4 v7, 0x0

    :goto_c
    move-object v1, v0

    goto/16 :goto_10

    :cond_d
    const/4 v7, 0x0

    :try_start_a
    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->getBody(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->getHttpResponse(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;

    move-result-object v1
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_e
    return-object v1

    :catchall_5
    move-exception v0

    goto :goto_8

    :catch_b
    move-exception v0

    goto :goto_9

    :catch_c
    move-exception v0

    goto :goto_a

    :catch_d
    move-exception v0

    goto :goto_b

    :catch_e
    move-exception v0

    goto :goto_c

    :goto_d
    :try_start_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpMessage: unexpected OOM - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    new-instance v8, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x3

    invoke-direct {v8, v9, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_f
    return-object v8

    :goto_e
    :try_start_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    new-instance v8, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x2

    invoke-direct {v8, v9, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_10
    return-object v8

    :goto_f
    :try_start_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    new-instance v8, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    invoke-direct {v8, v9, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_11
    return-object v8

    :goto_10
    :try_start_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    new-instance v8, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x4

    invoke-direct {v8, v9, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_12
    return-object v8

    :goto_11
    :try_start_14
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v1
    :try_end_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :catchall_6
    move-exception v0

    const/4 v7, 0x0

    :goto_12
    move-object v1, v0

    goto/16 :goto_16

    :catch_f
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    goto :goto_13

    :catch_10
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    goto :goto_14

    :catch_11
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    goto :goto_15

    :goto_13
    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-eqz v7, :cond_13

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_14
    return-object v2

    :catchall_7
    move-exception v0

    goto :goto_12

    :goto_14
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    if-eqz v7, :cond_15

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    :cond_15
    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_16
    return-object v2

    :goto_15
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;-><init>(ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-eqz v7, :cond_17

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_18
    return-object v2

    :goto_16
    if-eqz v7, :cond_19

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;->disconnect()V

    :cond_19
    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->close()V

    :cond_1a
    throw v1
.end method

.method public setHttpUrlConnectionOpenerForTesting(Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mHttpUrlConnectionOpener:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

    return-void
.end method

.method public setRequestProperties(Ljava/lang/String;Ljava/util/List;)V
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mRequestProperties:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestProperties(Ljava/lang/String;Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mRequestPropertiesKeyToHideValueOnLogging:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mRequestProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mRequestProperties:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRequestPropertyHiddenOnLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mRequestPropertiesKeyToHideValueOnLogging:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public useCache()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
