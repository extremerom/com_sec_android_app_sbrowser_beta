.class public Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;,
        Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpRequestData"

.field private static volatile sSslContext:Ljavax/net/ssl/SSLContext;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndRange:Ljava/lang/String;

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRetryable:Z

.field private mMethod:Ljava/lang/String;

.field private mNetworkListener:Lcom/sec/android/app/sbrowser/scloud/sync/network/INetworkCheckListener;

.field private mPayload:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;

.field private mRequestCode:Ljava/lang/String;

.field private mSize:J

.field private mStartRange:Ljava/lang/String;

.field private mTimeout:I

.field private mUrl:Ljava/lang/String;

.field private mWifiOnly:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mIsRetryable:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mStartRange:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mEndRange:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mNetworkListener:Lcom/sec/android/app/sbrowser/scloud/sync/network/INetworkCheckListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mWifiOnly:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mRequestCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private getMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    const-string v0, " : getMcc()"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const-string v0, ""

    if-nez p1, :cond_0

    const-string p1, " : getMcc() : The telephonyManager is null."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    const-string p1, " : getMcc() : The simOperator is less than 3."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p1, " : getMcc() : The simOperator is null or empty."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    const-string v0, " : getMnc()"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const-string v0, "00"

    if-nez p1, :cond_0

    const-string p1, " : getMnc() : The telephonyManager is null."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    const-string p1, " : getMnc() : The simOperator is less than 3."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0

    :cond_3
    :goto_1
    const-string p1, " : getMnc() : The simOperator is null or empty."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getPayloadInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mPayload:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;

    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContentType:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 10

    const-class v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->sSslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->sSslContext:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v3, "AndroidCAStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    const-string v7, "system:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v5, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v6, v4, :cond_5

    aget-object v8, v2, v6

    const-string v9, "RC4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "SHA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "MD5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    add-int/lit8 v9, v7, 0x1

    aput-object v8, v3, v7

    move v7, v9

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    array-length v4, v2

    move v6, v5

    :goto_2
    if-ge v5, v4, :cond_8

    aget-object v7, v2, v5

    const-string v8, "RC4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "SHA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "MD5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    add-int/lit8 v8, v6, 0x1

    aput-object v7, v3, v6

    move v6, v8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->sSslContext:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->sSslContext:Ljavax/net/ssl/SSLContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_9
    :try_start_3
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create SSLContext"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v1

    :cond_a
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create SSLContext"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while creating SSLContext "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v2, v3, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw v2

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private streaming(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mStartRange:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v10, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mSize:J

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "streaming, total file size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "streaming, read "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2000

    new-array v2, v1, [B

    new-instance v12, Ljava/io/BufferedInputStream;

    move-object/from16 v3, p1

    invoke-direct {v12, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v13, Ljava/io/BufferedOutputStream;

    move-object/from16 v3, p2

    invoke-direct {v13, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v3, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v12, v2, v5, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v13, v2, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    if-eqz p3, :cond_1

    int-to-long v7, v6

    add-long v14, v3, v7

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mRequestCode:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v4, v5, v6, v9}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "tranUpS[%s] [%5d / %10d / %10d]"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p3

    move-wide v4, v7

    move-wide v6, v14

    move-wide v8, v10

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;->transferred(JJJ)V

    move-wide v3, v14

    :cond_1
    const-wide/32 v5, 0x38400000

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    const-string v1, "trasffering have to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mNetworkListener:Lcom/sec/android/app/sbrowser/scloud/sync/network/INetworkCheckListener;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/network/INetworkCheckListener;->isAvailableNetwork()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v2, "Network is not available..."

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    const-string v1, "transffered finished after flush : "

    invoke-static {v3, v4, v1, v0}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private streamingWithFile(Ljava/io/FileInputStream;Ljava/io/OutputStream;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V
    .locals 25

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mStartRange:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    const-string v4, "streaming, total file size = "

    invoke-static {v0, v4, v3}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mEndRange:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mEndRange:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v2

    :goto_1
    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    const-string v4, "streaming, read "

    const-string v5, " from "

    invoke-static {v0, v2, v4, v5, v3}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    invoke-static/range {p2 .. p2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v4

    const-wide/16 v12, 0x0

    move-wide v14, v12

    :goto_2
    const/16 v5, 0x1000

    int-to-long v6, v5

    add-long/2addr v6, v14

    int-to-long v9, v0

    cmp-long v6, v6, v9

    if-lez v6, :cond_3

    sub-long v5, v9, v14

    long-to-int v5, v5

    :cond_3
    int-to-long v7, v2

    int-to-long v5, v5

    move-wide/from16 v16, v5

    move-object v6, v3

    move-wide/from16 v18, v7

    move-wide/from16 v23, v9

    move-wide/from16 v9, v16

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v5

    cmp-long v2, v5, v12

    if-gtz v2, :cond_4

    goto :goto_5

    :cond_4
    add-long/2addr v14, v5

    add-long v7, v18, v5

    long-to-int v2, v7

    if-eqz p3, :cond_5

    const-string v7, "NetworkUtil"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "tranUpF[%s] [%5d / %10d / %10d]"

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mRequestCode:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, p3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v14

    move-wide/from16 v21, v23

    invoke-interface/range {v16 .. v22}, Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;->transferred(JJJ)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_3
    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mNetworkListener:Lcom/sec/android/app/sbrowser/scloud/sync/network/INetworkCheckListener;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/network/INetworkCheckListener;->isAvailableNetwork()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v2, "Network is not available..."

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_4
    cmp-long v5, v14, v23

    if-ltz v5, :cond_8

    :goto_5
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void

    :cond_8
    const-wide/16 v12, 0x0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_9
    throw v0
.end method

.method private writeBody(Ljava/io/OutputStream;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;)V
    .locals 2

    :try_start_0
    iget-object v0, p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContent:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance p0, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContent:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContent:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->streamingWithFile(Ljava/io/FileInputStream;Ljava/io/OutputStream;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    instance-of v1, v0, Ljava/io/FileDescriptor;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContent:Ljava/lang/Object;

    check-cast v1, Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object p2, p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->streaming(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mIsRetryable:Z

    check-cast v0, Ljava/io/InputStream;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->streaming(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_3
    :goto_2
    return-void

    :goto_3
    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mHeader:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mHeader:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mHeader:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public build()Ljava/net/HttpURLConnection;
    .locals 8

    const-string v0, ",wifionly="

    const-string v1, ",mcc="

    const-string v2, ",mnc="

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "build - request : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mRequestCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", method : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mMethod:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mUrl:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "protected network"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v6, v5

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    const-string v6, "normal network"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mMethod:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mHeader:Ljava/util/Map;

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isMobileConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->MOBILE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mWifiOnly:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mWifiOnly:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "x-sc-network"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-sc-reqTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mTimeout:I

    invoke-virtual {v5, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mTimeout:I

    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mPayload:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mPayload:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mPayload:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;

    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->writeBody(Ljava/io/OutputStream;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    if-eqz v4, :cond_7

    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
    return-object v5

    :goto_3
    :try_start_2
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-eqz v4, :cond_8

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_5
    throw p0
.end method

.method public createReqItem(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;)V

    return-object p1
.end method

.method public getRequestCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mRequestCode:Ljava/lang/String;

    return-object p0
.end method

.method public getURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mMethod:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/lang/String;Ljava/io/File;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;-><init>()V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContentType:Ljava/lang/String;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContent:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mPayload:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;

    return-void
.end method

.method public setPayload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;-><init>()V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContentType:Ljava/lang/String;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;->mContent:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mPayload:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$BodyPart;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mTimeout:I

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setWifiOption(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mWifiOnly:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v5, v0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mRequestCode:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mIsRetryable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->mMethod:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;->getPayloadInfo()Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "ReqData[%-25s] hs[%10d] canRetry[%-5s] [%-6s]%s %s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
