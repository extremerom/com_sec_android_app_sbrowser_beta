.class Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;
    }
.end annotation


# static fields
.field static final API_REQUEST_TIMEOUT_MILLIS:I


# instance fields
.field private final mMessageListener:Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;

.field private mRetryCountForTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->API_REQUEST_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Ljava/lang/String;Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;)V
    .locals 2
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p8, "/configs?pl="

    invoke-static {p2, p8}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getPlatformType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&dt="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&av="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getAndroidVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ma="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceManufacturer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ir="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetRelease(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&iv="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mo="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&oc="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getOperatorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&cc="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ct="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getClientType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&iu="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-static {p8, p3, p6}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p6, "GET"

    invoke-direct {p0, p6, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "https"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->createSystemCertificateSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    const-string p2, "Content-Type"

    const-string p3, "application/json"

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Accept"

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Accept-Language"

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-API-KEY"

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setRequestPropertyHiddenOnLogging(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Cookie"

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getApiCookies(Landroid/content/Context;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestPropertiesHiddenOnLogging(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "If-None-Match"

    invoke-virtual {p0, p2, p4}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getServerProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "product"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getRequestErrorType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "X-ERROR-TYPE"

    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getResponseHoldingTimeMillis(Landroid/content/Context;)J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-lez p4, :cond_4

    const-string p4, "X-RESPONSE-HOLDING-TIME-MILLIS"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p2, "ETag"

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->addResponseHeaderName(Ljava/lang/String;)V

    const-string p2, "X-Cache"

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->addResponseHeaderName(Ljava/lang/String;)V

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->getRetryCountForTimeout(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->mRetryCountForTimeout:I

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;

    return-void
.end method

.method private createSystemCertificateSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v1, "AndroidCAStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p0, p0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    const-string v5, "system:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "createSystemCertificateSSLSocketFactory : KeyManagementException"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    return-object p0

    :catch_1
    const-string v0, "createSystemCertificateSSLSocketFactory : IOException"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    return-object p0

    :catch_2
    const-string v0, "createSystemCertificateSSLSocketFactory : CertificateException"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    return-object p0

    :catch_3
    const-string v0, "createSystemCertificateSSLSocketFactory : NoSuchAlgorithmException"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    return-object p0

    :catch_4
    const-string v0, "createSystemCertificateSSLSocketFactory : KeyStoreException"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getRetryCountForTimeout(Landroid/content/Context;I)I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "GlobalConfigUpdateFeature"

    const-string v2, "retryCountForTimeout"

    invoke-virtual {v0, v1, p0, v2, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getConnectTimeoutMs()I
    .locals 0

    sget p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->API_REQUEST_TIMEOUT_MILLIS:I

    return p0
.end method

.method public final getReadTimeoutMs()I
    .locals 0

    sget p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->API_REQUEST_TIMEOUT_MILLIS:I

    return p0
.end method

.method public onJsonObjectHttpError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V
    .locals 3

    iget v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseHeaders:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;->onHttpNotModified(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->mRetryCountForTimeout:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->mRetryCountForTimeout:I

    sget-object p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->GLOBAL_CONFIG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/MessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseHeaders:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FAILED : (errorCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")Error received - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;->onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onJsonObjectInvalidResponseError(Landroid/content/Context;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;

    const/4 v0, 0x0

    const-string v1, "FAILED : Internal error"

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;->onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public onJsonObjectJsonParsingError(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;

    const-string v0, "FAILED : Parsing error"

    invoke-interface {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;->onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public onJsonObjectResponse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;)V
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;->mMessageListener:Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;->onSuccess(Landroid/content/Context;Ljava/util/Map;Lorg/json/JSONObject;)V

    return-void
.end method
