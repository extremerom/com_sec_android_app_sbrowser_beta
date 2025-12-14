.class public Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _instance:Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;

.field private static mNewSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

.field private static mOldSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/sdp/core/SdpEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->mNewSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    return-void
.end method

.method private constructor <init>(Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->mOldSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x140

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    move-result-object v0
    :try_end_1
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;-><init>(Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;)V

    sput-object v1, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 v1, -0x8

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_3

    new-instance v1, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;-><init>(Lcom/samsung/android/knox/sdp/core/SdpEngine;)V

    sput-object v1, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;

    :cond_3
    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;

    return-object v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public unlock(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;
    .locals 1

    new-instance p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;-><init>()V

    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->mNewSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->getTimeout()I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->setErrorCode(I)V

    if-lez p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->setTimeout(I)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->mOldSdpEngine:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    const/4 p1, -0x7

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->setErrorCode(I)V

    goto :goto_1

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SdpEngineWrapper.unlock() - timeout : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SdpEngineWrapper"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->setTimeout(I)V

    :cond_2
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->setErrorCode(I)V

    goto :goto_1

    :catch_6
    const/4 p1, -0x5

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->setErrorCode(I)V

    goto :goto_1

    :catch_7
    const/16 p1, -0xf

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->setErrorCode(I)V

    :cond_3
    :goto_1
    return-object p0
.end method
