.class Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1;->open(Ljava/net/URL;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1;

.field final synthetic val$httpUrlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1;Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disconnect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getResponseCode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    return p0
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;->val$httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method
