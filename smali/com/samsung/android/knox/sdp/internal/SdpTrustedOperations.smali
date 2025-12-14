.class public Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

.field private static mSdpAssistant:Lcom/sec/sdp/internal/SdpAssistant;


# direct methods
.method private constructor <init>(Lcom/sec/sdp/internal/SdpAssistant;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mSdpAssistant:Lcom/sec/sdp/internal/SdpAssistant;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mInstance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/sec/sdp/internal/SdpAssistant;->getInstance()Lcom/sec/sdp/internal/SdpAssistant;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;-><init>(Lcom/sec/sdp/internal/SdpAssistant;)V

    sput-object v1, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mInstance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const/4 v1, 0x0

    const/16 v2, 0x13

    const-class v3, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    const-string v4, "getInstance"

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mInstance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    return-object v0
.end method


# virtual methods
.method public deleteTokenFromTrusted(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mSdpAssistant:Lcom/sec/sdp/internal/SdpAssistant;

    invoke-virtual {p0, p1}, Lcom/sec/sdp/internal/SdpAssistant;->deleteToeknFromTrusted(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 v0, 0x13

    const-class v1, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    const-string v2, "deleteTokenFromTrusted"

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSupportedSDKVersion()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mSdpAssistant:Lcom/sec/sdp/internal/SdpAssistant;

    invoke-virtual {p0}, Lcom/sec/sdp/internal/SdpAssistant;->getSupportedSDKVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const/4 v0, 0x0

    const/16 v1, 0x13

    const-class v2, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    const-string v3, "getSupportedSDKVersion"

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mSdpAssistant:Lcom/sec/sdp/internal/SdpAssistant;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sdp/internal/SdpAssistant;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/lang/String;

    filled-new-array {p1, p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0x13

    const-class v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    const-string v1, "saveTokenIntoTrusted"

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mSdpAssistant:Lcom/sec/sdp/internal/SdpAssistant;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sdp/internal/SdpAssistant;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/lang/String;

    filled-new-array {p1, p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0x13

    const-class v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    const-string v1, "unlockViaTrusted"

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 p1, -0x63

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x7

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_3
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_4
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x8

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method
