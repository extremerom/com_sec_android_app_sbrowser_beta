.class public Lcom/samsung/android/knox/sdp/SdpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/knox/sdp/SdpUtil;

.field private static mSdpUtil:Lcom/sec/enterprise/knox/sdp/SdpUtil;


# direct methods
.method private constructor <init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/sdp/SdpUtil;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/sdp/SdpUtil;->mInstance:Lcom/samsung/android/knox/sdp/SdpUtil;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/SdpUtil;-><init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;)V

    sput-object v1, Lcom/samsung/android/knox/sdp/SdpUtil;->mInstance:Lcom/samsung/android/knox/sdp/SdpUtil;

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const/4 v1, 0x0

    const/16 v2, 0x13

    const-class v3, Lcom/samsung/android/knox/sdp/SdpUtil;

    const-string v4, "getInstance"

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/sdp/SdpUtil;->mInstance:Lcom/samsung/android/knox/sdp/SdpUtil;

    return-object v0
.end method


# virtual methods
.method public getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 3

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->convertToNew(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 v0, 0x13

    const-class v1, Lcom/samsung/android/knox/sdp/SdpUtil;

    const-string v2, "getEngineInfo"

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 p1, -0xf

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_3
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x8

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method

.method public isSdpSupported()Z
    .locals 4

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isSdpSupported()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const/4 v0, 0x0

    const/16 v1, 0x13

    const-class v2, Lcom/samsung/android/knox/sdp/SdpUtil;

    const-string v3, "isSdpSupported"

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
