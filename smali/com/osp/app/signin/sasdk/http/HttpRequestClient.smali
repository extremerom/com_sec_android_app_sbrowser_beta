.class public Lcom/osp/app/signin/sasdk/http/HttpRequestClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osp/app/signin/sasdk/http/HttpRequestClient$InstanceHolder;,
        Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;,
        Lcom/osp/app/signin/sasdk/http/HttpRequestClient$EntryPointResponseListener;,
        Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;,
        Lcom/osp/app/signin/sasdk/http/HttpRequestClient$AccountLinkingAPI;,
        Lcom/osp/app/signin/sasdk/http/HttpRequestClient$SDKCommonAPI;
    }
.end annotation


# static fields
.field private static final RESPONSE_JSON_TYPE:Ljava/lang/String; = "JSON"

.field private static final RESPONSE_XML_TYPE:Ljava/lang/String; = "XML"

.field private static final TAG:Ljava/lang/String; = "HttpRequestClient"


# instance fields
.field private mTrustedKeyStore:Ljava/security/KeyStore;


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->mTrustedKeyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->mTrustedKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "system:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->mTrustedKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "HttpRequestClient"

    const-string v1, "Failed to create a keystore containing our trusted system CAs"

    invoke-static {v0, v1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->showResponseDataLog(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Lretrofit2/Retrofit;Lhd/X;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->showErrorResponseWithJSONResult(Lretrofit2/Retrofit;Lhd/X;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Lhd/X;)Lcom/osp/app/signin/sasdk/response/LinkingResponseData;
    .locals 0

    invoke-direct {p0, p1}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->parseErrorResponseWithXMLResult(Lhd/X;)Lcom/osp/app/signin/sasdk/response/LinkingResponseData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->showErrorResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/osp/app/signin/sasdk/http/HttpRequestClient;
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$InstanceHolder;->access$100()Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    move-result-object v0

    return-object v0
.end method

.method private makeHttpClient()Lhd/H;
    .locals 5

    new-instance v0, Lhd/H;

    invoke-direct {v0}, Lhd/H;-><init>()V

    new-instance v1, Lvd/c;

    invoke-direct {v1}, Lvd/c;-><init>()V

    sget-object v2, Lvd/a;->BASIC:Lvd/a;

    invoke-virtual {v1, v2}, Lvd/c;->c(Lvd/a;)V

    invoke-virtual {v0, v1}, Lhd/H;->a(Lhd/C;)V

    const-string v1, "HttpRequestClient"

    const-string v2, "set http client no proxy"

    invoke-static {v1, v2}, Lcom/osp/app/signin/sasdk/common/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iget-object v3, v0, Lhd/H;->m:Ljava/net/Proxy;

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object v2, v0, Lhd/H;->m:Ljava/net/Proxy;

    const-string v2, "TLSv1.2"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iget-object v3, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->mTrustedKeyStore:Ljava/security/KeyStore;

    if-eqz v3, :cond_1

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->mTrustedKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    const-string v3, "sslSocketFactory"

    invoke-static {p0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "trustManager"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lhd/H;->p:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lhd/H;->q:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_0
    iput-object p0, v0, Lhd/H;->p:Ljavax/net/ssl/SSLSocketFactory;

    sget-object p0, Lqd/n;->a:Lqd/n;

    sget-object p0, Lqd/n;->a:Lqd/n;

    invoke-virtual {p0, v2}, Lqd/n;->b(Ljavax/net/ssl/X509TrustManager;)LG5/o2;

    move-result-object p0

    iput-object p0, v0, Lhd/H;->v:LG5/o2;

    iput-object v2, v0, Lhd/H;->q:Ljavax/net/ssl/X509TrustManager;

    const-string p0, "Security=[true]"

    invoke-static {v1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "Security=[false]"

    invoke-static {v1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private makeRetrofitInstance(ILjava/lang/String;)Lretrofit2/Retrofit;
    .locals 2

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$Auth2;->getBaseUrlForRequestDomain()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$Auth2;->getBaseUrlForAPI(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x153f7

    if-eq v0, v1, :cond_2

    const v1, 0x22e4e8

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "JSON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_1

    :cond_2
    const-string v0, "XML"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lretrofit2/Retrofit$Builder;

    invoke-direct {p2}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->makeHttpClient()Lhd/H;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lhd/I;

    invoke-direct {p2, p0}, Lhd/I;-><init>(Lhd/H;)V

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lhd/I;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    new-instance p1, LQa/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, LQa/a;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lo3/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lo3/f;-><init>(I)V

    iput-object v0, p1, LQa/a;->b:Lo3/f;

    iput-boolean p2, p1, LQa/a;->c:Z

    const/4 p2, 0x0

    iput-boolean p2, p1, LQa/a;->a:Z

    new-instance p2, LB3/c;

    invoke-direct {p2, p1}, LB3/c;-><init>(Ljava/lang/Object;)V

    new-instance p1, LRa/a;

    invoke-direct {p1, p2}, LRa/a;-><init>(LB3/c;)V

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->makeHttpClient()Lhd/H;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lhd/I;

    invoke-direct {v0, p0}, Lhd/I;-><init>(Lhd/H;)V

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->client(Lhd/I;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private parseErrorResponseWithXMLResult(Lhd/X;)Lcom/osp/app/signin/sasdk/response/LinkingResponseData;
    .locals 3

    new-instance p0, LQa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LQa/a;->a:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lo3/f;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lo3/f;-><init>(I)V

    iput-object v1, p0, LQa/a;->b:Lo3/f;

    iput-boolean v0, p0, LQa/a;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LQa/a;->a:Z

    invoke-virtual {p1}, Lhd/X;->source()Lwd/i;

    move-result-object p1

    new-instance v0, LQa/h;

    invoke-direct {v0, p1}, LQa/h;-><init>(Lwd/i;)V

    invoke-virtual {v0}, LQa/h;->a()V

    invoke-virtual {v0}, LQa/h;->k()Ljava/lang/String;

    iget-object p1, p0, LQa/a;->b:Lo3/f;

    const-class v1, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;

    invoke-virtual {p1, v1}, Lo3/f;->m(Ljava/lang/Class;)LSa/b;

    move-result-object p1

    invoke-interface {p1, v0, p0}, LSa/b;->fromXml(LQa/h;LQa/a;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, LQa/h;->c()V

    check-cast p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;

    return-object p0
.end method

.method private showErrorResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p0, "===================== ERROR ======================"

    const-string v0, "HttpRequestClient"

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Error = ["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Code = ["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Descrption = ["

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "=================================================="

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showErrorResponseWithJSONResult(Lretrofit2/Retrofit;Lhd/X;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-class v1, Lcom/osp/app/signin/sasdk/response/ServerErrorResponseJSONData;

    invoke-virtual {p1, v1, v0}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    :try_start_0
    invoke-interface {p1, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/osp/app/signin/sasdk/response/ServerErrorResponseJSONData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/ServerErrorResponseJSONData;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/ServerErrorResponseJSONData;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/ServerErrorResponseJSONData;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->showErrorResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "HttpRequestClient"

    const-string p1, "IOException occurred during showErrorResponseWithJSONResult"

    invoke-static {p0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showResponseDataLog(ILjava/lang/String;)V
    .locals 2

    const-string p0, "==================== RESPONSE ===================="

    const-string v0, "HttpRequestClient"

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "ResponseCode = ["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "ResponseMessage = ["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "=================================================="

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAccountLinkingStatus(Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "user_id"

    const-string v1, ""

    const-string v2, "Bearer "

    const-string v3, "Request checkAccountLinkingStatus"

    const-string v4, "HttpRequestClient"

    invoke-static {v4, v3}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "XML"

    const/16 v5, 0x6d

    invoke-direct {p0, v5, v3}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->makeRetrofitInstance(ILjava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v3

    const-class v5, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$AccountLinkingAPI;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$AccountLinkingAPI;

    const-string v6, "application/x-www-form-urlencoded"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "access_token"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v2, "client_id"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "partner_client_id"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v5 .. v11}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$AccountLinkingAPI;->checkAccountLinkingStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    new-instance v0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;

    invoke-direct {v0, p0, p1}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;-><init>(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;)V

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "Exception occurred during checkAccountLinkingStatus"

    invoke-static {v4, p2, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;->onRequestFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public checkDomain(Landroid/content/Context;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;)V
    .locals 4

    const-string v0, "Request CheckDomain"

    const-string v1, "HttpRequestClient"

    invoke-static {v1, v0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "JSON"

    const/16 v2, 0x65

    invoke-direct {p0, v2, v0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->makeRetrofitInstance(ILjava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$SDKCommonAPI;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$SDKCommonAPI;

    invoke-interface {v2}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$SDKCommonAPI;->checkDomain()Lretrofit2/Call;

    move-result-object v2

    new-instance v3, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;-><init>(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Landroid/content/Context;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;Lretrofit2/Retrofit;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception occurred during checkDomain"

    invoke-static {v1, p1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;->onRequestFail()V

    :goto_0
    return-void
.end method

.method public getEntryPointOfIdm(Landroid/content/Context;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$EntryPointResponseListener;)V
    .locals 7

    const-string v0, "Basic "

    const-string v1, "Request getEntryPointOfIdm"

    const-string v2, "HttpRequestClient"

    invoke-static {v2, v1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v3, "08fki92zu4"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v4, "JSON"

    const/16 v5, 0x66

    invoke-direct {p0, v5, v4}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->makeRetrofitInstance(ILjava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v4

    const-class v5, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$SDKCommonAPI;

    invoke-virtual {v4, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$SDKCommonAPI;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/osp/app/signin/sasdk/common/Util;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, v3, v0, p1}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$SDKCommonAPI;->getEntryPointOfIdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$2;

    invoke-direct {v0, p0, p2, v4}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$2;-><init>(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$EntryPointResponseListener;Lretrofit2/Retrofit;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception occurred during getEntryPointOfIdm"

    invoke-static {v2, p1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$EntryPointResponseListener;->onRequestFail()V

    :goto_0
    return-void
.end method
