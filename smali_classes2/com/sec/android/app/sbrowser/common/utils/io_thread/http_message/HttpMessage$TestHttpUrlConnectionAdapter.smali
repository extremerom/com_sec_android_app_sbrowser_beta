.class public Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestHttpUrlConnectionAdapter"
.end annotation


# instance fields
.field private mConnectTimeout:I

.field private mDisconnected:Z

.field private mDoOutput:Z

.field private mMethod:Ljava/lang/String;

.field private mReadTimeout:I

.field private final mRequestOutputStream:Ljava/io/ByteArrayOutputStream;

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

.field private mResponseCode:I

.field private mResponseHeaders:Ljava/util/Map;
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

.field private mResponseInputStream:Ljava/io/InputStream;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mUrl:Ljava/lang/String;

.field private mUseCaches:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/io/InputStream;Ljava/util/Map;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mConnectTimeout:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mReadTimeout:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mUseCaches:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mDoOutput:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mRequestProperties:Ljava/util/Map;

    const-string v1, "GET"

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mMethod:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mDisconnected:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mUrl:Ljava/lang/String;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mRequestOutputStream:Ljava/io/ByteArrayOutputStream;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mResponseCode:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mResponseInputStream:Ljava/io/InputStream;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mRequestProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mRequestProperties:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mDisconnected:Z

    return-void
.end method

.method public disconnected()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mDisconnected:Z

    return p0
.end method

.method public getConnectTimeout()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mConnectTimeout:I

    return p0
.end method

.method public getDoOutput()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mDoOutput:Z

    return p0
.end method

.method public getHeaderFields(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mResponseInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mRequestOutputStream:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method public getReadTimeout()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mReadTimeout:I

    return p0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mRequestProperties:Ljava/util/Map;

    return-object p0
.end method

.method public getResponseCode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mResponseCode:I

    return p0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUseCaches()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mUseCaches:Z

    return p0
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mConnectTimeout:I

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mDoOutput:Z

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mReadTimeout:I

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mMethod:Ljava/lang/String;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$TestHttpUrlConnectionAdapter;->mUseCaches:Z

    return-void
.end method
