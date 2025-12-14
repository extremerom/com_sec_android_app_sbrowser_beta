.class public Lcom/samsung/android/knox/sdp/core/SdpEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/knox/sdp/core/SdpEngine;

.field private static mSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;


# direct methods
.method private constructor <init>(Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mInstance:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpEngine;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpEngine;-><init>(Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;)V

    sput-object v1, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mInstance:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const/4 v1, 0x0

    const/16 v2, 0x13

    const-class v3, Lcom/samsung/android/knox/sdp/core/SdpEngine;

    const-string v4, "getInstance"

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 v1, -0x8

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mInstance:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    return-object v0
.end method


# virtual methods
.method public addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->convertToOld(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;)Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_3
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 p1, -0xf

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_4
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x7

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_5
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 p1, -0x9

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_6
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x4

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->exists(Ljava/lang/String;)Z

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

    const-class v1, Lcom/samsung/android/knox/sdp/core/SdpEngine;

    const-string v2, "exists"

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public lock(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->lock(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 v0, 0x13

    const-class v1, Lcom/samsung/android/knox/sdp/core/SdpEngine;

    const-string v2, "lock"

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x7

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_3
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 p1, -0xf

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method

.method public removeEngine(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->removeEngine(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 v0, 0x13

    const-class v1, Lcom/samsung/android/knox/sdp/core/SdpEngine;

    const-string v2, "removeEngine"

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x7

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_3
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 p1, -0xf

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    invoke-virtual {p0, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->setPassword(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/lang/String;

    filled-new-array {p1, p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0x13

    const-class v0, Lcom/samsung/android/knox/sdp/core/SdpEngine;

    const-string v1, "setPassword"

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x6

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_3
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_4
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 p1, -0xf

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_5
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x7

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    invoke-virtual {p0, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/lang/String;

    filled-new-array {p1, p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0x13

    const-class v0, Lcom/samsung/android/knox/sdp/core/SdpEngine;

    const-string v1, "unlock"

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x7

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JINWOO"

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const-string p2, "SdpEngine.unlock() - timeout : "

    invoke-static {p0, p2, p1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    const/4 p2, -0x1

    if-lez p0, :cond_1

    const-string v0, "Throw exception with timeout"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(II)V

    throw p1

    :cond_1
    const-string p0, "Throw exception without timeout"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_3
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_4
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 p1, -0xf

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method
