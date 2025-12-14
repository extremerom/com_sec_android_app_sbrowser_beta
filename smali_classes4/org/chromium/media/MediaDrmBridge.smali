.class public Lorg/chromium/media/MediaDrmBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaDrmBridge$KeyStatus;,
        Lorg/chromium/media/MediaDrmBridge$EventListener;,
        Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;,
        Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;,
        Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;,
        Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;,
        Lorg/chromium/media/MediaDrmBridge$Natives;,
        Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;,
        Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PLACEHOLDER_KEY_ID:[B

.field private static final UNPROVISION:[B

.field private static final WIDEVINE_UUID:Ljava/util/UUID;

.field private static final sMediaCryptoDeferrer:Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;


# instance fields
.field private final mKeySystemUuid:Ljava/util/UUID;

.field private mMediaCrypto:Landroid/media/MediaCrypto;

.field private mMediaCryptoSession:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

.field private mMediaDrm:Landroid/media/MediaDrm;

.field private mNativeMediaDrmBridge:J

.field private mOrigin:Ljava/lang/String;

.field private mOriginSet:Z

.field private mProvisioningPending:Z

.field private final mRequiresMediaCrypto:Z

.field private mSessionEventDeferrer:Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;

.field private mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

.field private mStorage:Lorg/chromium/media/MediaDrmStorageBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lorg/chromium/media/MediaDrmBridge;->WIDEVINE_UUID:Ljava/util/UUID;

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lorg/chromium/media/MediaDrmBridge;->PLACEHOLDER_KEY_ID:[B

    const-string v0, "unprovision"

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->UNPROVISION:[B

    new-instance v0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;

    invoke-direct {v0}, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;-><init>()V

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->sMediaCryptoDeferrer:Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;ZJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mKeySystemUuid:Ljava/util/UUID;

    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    iput-boolean p2, p0, Lorg/chromium/media/MediaDrmBridge;->mRequiresMediaCrypto:Z

    iput-wide p3, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    new-instance p1, Lorg/chromium/media/MediaDrmStorageBridge;

    invoke-direct {p1, p5, p6}, Lorg/chromium/media/MediaDrmStorageBridge;-><init>(J)V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mStorage:Lorg/chromium/media/MediaDrmStorageBridge;

    new-instance p2, Lorg/chromium/media/MediaDrmSessionManager;

    invoke-direct {p2, p1}, Lorg/chromium/media/MediaDrmSessionManager;-><init>(Lorg/chromium/media/MediaDrmStorageBridge;)V

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    iget-object p2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance p3, Lorg/chromium/media/MediaDrmBridge$EventListener;

    invoke-direct {p3, p0, p1}, Lorg/chromium/media/MediaDrmBridge$EventListener;-><init>(Lorg/chromium/media/MediaDrmBridge;I)V

    invoke-virtual {p2, p3}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    iget-object p2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance p3, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;

    invoke-direct {p3, p0, p1}, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;-><init>(Lorg/chromium/media/MediaDrmBridge;I)V

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    iget-object p2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance p3, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;

    invoke-direct {p3, p0, p1}, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;-><init>(Lorg/chromium/media/MediaDrmBridge;I)V

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    iget-object p2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance p3, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;

    invoke-direct {p3, p0, p1}, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;-><init>(Lorg/chromium/media/MediaDrmBridge;I)V

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaDrm;->setOnSessionLostStateListener(Landroid/media/MediaDrm$OnSessionLostStateListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isWidevine()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string p2, "privacyMode"

    const-string p3, "enable"

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string p1, "sessionSharing"

    invoke-virtual {p0, p1, p3}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/media/MediaDrmBridge;)Lorg/chromium/media/MediaDrmSessionManager;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->createMediaCrypto()Z

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->deferEventHandleIfNeeded(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/Runnable;)V

    return-void
.end method

.method private closeSession([BJ)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    const-wide/32 v4, 0x10c8e1

    const-string v6, "closeSession() called when MediaDrm is null."

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->getSessionIdByEmeId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sessionId in closeSession(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/32 v4, 0x10c8e2

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "closeSession(%s)"

    const-string v1, "media"

    invoke-static {v1, p1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "removeKeys failed: "

    invoke-static {v1, v2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->closeSessionNoException(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {p1, v0}, Lorg/chromium/media/MediaDrmSessionManager;->remove(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    invoke-direct {p0, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V

    const-string p0, "Session %s closed"

    invoke-static {v1, p0, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private closeSessionNoException(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V
    .locals 2
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    const-string v0, "Closing session %s"

    const-string v1, "media"

    invoke-static {v1, v0, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "closeSession failed: "

    invoke-static {v1, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static create([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)Lorg/chromium/media/MediaDrmBridge;
    .locals 16
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v9, p5

    const-string v11, "Failed to create MediaDrmBridge"

    const-string v2, "Create MediaDrmBridge with level %s and origin %s for %s"

    const-string v12, "media"

    move-object/from16 v3, p3

    invoke-static {v12, v2, v1, v0, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v15
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static/range {p0 .. p0}, Lorg/chromium/media/MediaDrmBridge;->getUuidFromBytes([B)Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v7, Lorg/chromium/media/MediaDrmBridge;

    move-object v2, v7

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v13, v7

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lorg/chromium/media/MediaDrmBridge;-><init>(Ljava/util/UUID;ZJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_1

    :try_start_2
    invoke-virtual {v15}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_2
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {v13, v1}, Lorg/chromium/media/MediaDrmBridge;->setSecurityLevel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v9, v10, v1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onCreateError(JI)V

    invoke-direct {v13}, Lorg/chromium/media/MediaDrmBridge;->release()V

    return-object v14

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {v13, v0}, Lorg/chromium/media/MediaDrmBridge;->setOrigin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v9, v10, v1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onCreateError(JI)V

    invoke-direct {v13}, Lorg/chromium/media/MediaDrmBridge;->release()V

    return-object v14

    :cond_3
    if-eqz p4, :cond_4

    invoke-direct {v13}, Lorg/chromium/media/MediaDrmBridge;->createMediaCrypto()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v14

    :cond_4
    return-object v13

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :cond_5
    :goto_1
    :try_start_3
    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v9, v10, v1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onCreateError(JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_6

    :try_start_4
    invoke-virtual {v15}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_4
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    return-object v14

    :goto_2
    if-eqz v15, :cond_7

    :try_start_5
    invoke-virtual {v15}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v1
    :try_end_6
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    invoke-static {v12, v11, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v9, v10, v1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onCreateError(JI)V

    return-object v14

    :goto_5
    invoke-static {v12, v11, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v9, v10, v1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onCreateError(JI)V

    return-object v14

    :goto_6
    const-string v1, "Unsupported DRM scheme"

    invoke-static {v12, v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v9, v10, v1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onCreateError(JI)V

    return-object v14
.end method

.method private createMediaCrypto()Z
    .locals 7

    const-string v0, "media"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v3
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    const-string v1, "Cannot create MediaCrypto Session."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->onCreateError(I)V

    return v2

    :cond_0
    invoke-static {v3}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->createTemporarySessionId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const-string v4, "MediaCrypto Session created: %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v3
    :try_end_1
    .catch Landroid/media/MediaCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mKeySystemUuid:Ljava/util/UUID;

    invoke-static {v4}, Landroid/media/MediaCrypto;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/media/MediaCrypto;

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->mKeySystemUuid:Ljava/util/UUID;

    iget-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    invoke-virtual {v6}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v4, v5, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    const-string v4, "MediaCrypto successfully created!"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    invoke-direct {p0, v4}, Lorg/chromium/media/MediaDrmBridge;->onMediaCryptoReady(Landroid/media/MediaCrypto;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_3
    .catch Landroid/media/MediaCryptoException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_0
    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :try_start_4
    const-string v1, "Cannot create MediaCrypto for unsupported scheme."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->onCreateError(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_5
    .catch Landroid/media/MediaCryptoException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :goto_1
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
    :try_end_7
    .catch Landroid/media/MediaCryptoException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_3
    const-string v3, "Cannot create MediaCrypto"

    invoke-static {v0, v3, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->onCreateError(I)V

    :cond_4
    :goto_4
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    return v2

    :catch_1
    const-string v3, "Not provisioned during openSession()"

    invoke-static {v0, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/chromium/media/MediaDrmBridge;->sMediaCryptoDeferrer:Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;

    invoke-virtual {v3}, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->isProvisioning()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->onCreateError(I)V

    :cond_5
    return v0

    :cond_6
    const-string v3, "defer CreateMediaCrypto() calls"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lorg/chromium/media/MediaDrmBridge;->sMediaCryptoDeferrer:Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;

    new-instance v2, Lorg/chromium/media/MediaDrmBridge$1;

    invoke-direct {v2, p0}, Lorg/chromium/media/MediaDrmBridge$1;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    invoke-virtual {v0, v2}, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->defer(Ljava/lang/Runnable;)V

    return v1
.end method

.method private createSession([BLjava/lang/String;ILjava/util/HashMap;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "media"

    const-string v2, "createSession()"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    const-string p1, "createSession() called when MediaDrm is null."

    invoke-static {v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v5, 0x10c8e1

    const-string v7, "MediaDrm released previously."

    move-object v2, p0

    move-wide v3, p5

    invoke-direct/range {v2 .. v7}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-wide/32 v5, 0x10c8e5

    const-string v7, "Open session failed."

    move-object v2, p0

    move-wide v3, p5

    invoke-direct/range {v2 .. v7}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    invoke-static {v0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->createPersistentSessionId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->createTemporarySessionId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object v0

    :goto_0
    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->closeSessionNoException(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    const-wide/32 v5, 0x10c8e9

    const-string v7, "Generate request failed."

    move-object v2, p0

    move-wide v3, p5

    invoke-direct/range {v2 .. v7}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_3
    const-string p4, "createSession(): Session (%s) created for origin %s."

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mOrigin:Ljava/lang/String;

    invoke-static {v1, p4, v0, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p5, p6, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolvedWithSession(JLorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    invoke-direct {p0, v0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Landroid/media/MediaDrm$KeyRequest;)V

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {p0, v0, p2, p3}, Lorg/chromium/media/MediaDrmSessionManager;->put(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Device not provisioned"

    invoke-static {v1, p2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/32 v5, 0x10c8e3

    const-string v7, "Device not provisioned during createSession()."

    move-object v2, p0

    move-wide v3, p5

    invoke-direct/range {v2 .. v7}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void
.end method

.method private createSessionFromNative([BLjava/lang/String;I[Ljava/lang/String;J)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_1

    array-length v0, p4

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_1

    aget-object v1, p4, v0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p4, v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Additional data array doesn\'t have equal keys/values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/media/MediaDrmBridge;->createSession([BLjava/lang/String;ILjava/util/HashMap;J)V

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->doRemoveSession(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;J)V

    return-void
.end method

.method private deferEventHandleIfNeeded(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionEventDeferrer:Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;->shouldDefer(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionEventDeferrer:Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;

    invoke-virtual {p0, p2}, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;->defer(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private destroy()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Destroying MediaDrmBridge for origin %s"

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mOrigin:Ljava/lang/String;

    const-string v2, "media"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    :cond_0
    return-void
.end method

.method private displayMetrics()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isWidevine()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v0, "metrics"

    invoke-virtual {p0, v0}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "media"

    const-string v1, "metrics: "

    invoke-static {p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private doRemoveSession(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;J)V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p2

    if-nez p2, :cond_0

    const-wide/32 v3, 0x10c8eb

    const-string v5, "Fail to generate key release request"

    move-object v0, p0

    move-wide v1, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Landroid/media/MediaDrm$KeyRequest;)V

    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BLjava/lang/String;I)Landroid/media/MediaDrm$KeyRequest;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/media/MediaDrmBridge;[B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->getSessionIdByDrmId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->loadSessionWithLoadedStorage(Lorg/chromium/media/MediaDrmSessionManager$SessionId;J)V

    return-void
.end method

.method private getCurrentHdcpLevel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "hdcpLevel"

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstApiLevel()I
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInt"

    const-class v4, Ljava/lang/String;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "media"

    const-string v4, "Exception while getting system property %s. Using default."

    invoke-static {v3, v4, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method private getKeyRequest(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionId;",
            "[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    if-nez p5, :cond_0

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v5, p5

    const/4 p5, 0x3

    const-string v6, "media"

    if-ne p4, p5, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->keySetId()[B

    move-result-object p5

    :goto_0
    move-object v1, p5

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object p5

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p0
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_2
    const-string p2, "Failed to getKeyRequest()."

    invoke-static {v6, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    const-string p3, "The origin needs re-provision. Unprovision the origin so that the next MediaDrmBridge creation can trigger the provision flow."

    invoke-static {v6, p3, p2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->unprovision()V

    :goto_4
    const/4 p0, 0x0

    :goto_5
    if-nez p0, :cond_2

    const-string p2, "getKeyRequest(%s) failed"

    invoke-static {v6, p2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_2
    const-string p2, "getKeyRequest(%s) succeeded"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, p2, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-object p0
.end method

.method private static getPlaceholderKeysInfo(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/chromium/media/MediaDrmBridge$KeyStatus;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$KeyStatus;

    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->PLACEHOLDER_KEY_ID:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v0, ""

    const-string v1, "media"

    if-nez p0, :cond_0

    const-string p0, "getPropertyString(%s): MediaDrm is null."

    invoke-static {v1, p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "Failed to get property %s"

    invoke-static {v1, v2, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private getSecurityLevel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "securityLevel"

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSessionIdByDrmId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 2

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "media"

    const-string p1, "Session doesn\'t exist because media crypto session is not created."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager;->getSessionIdByDrmId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    return-object p0
.end method

.method private getSessionIdByEmeId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 2

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "media"

    const-string p1, "Session doesn\'t exist because media crypto session is not created."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager;->getSessionIdByEmeId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    return-object p0
.end method

.method private static getUuidFromBytes([B)Ljava/util/UUID;
    .locals 9

    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move-wide v4, v2

    :goto_0
    const/16 v6, 0x8

    if-ge v0, v6, :cond_1

    shl-long/2addr v4, v6

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_1
    if-ge v0, v1, :cond_2

    shl-long/2addr v2, v6

    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "version"

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Version: %s"

    const-string v2, "media"

    invoke-static {v2, v1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isWidevine()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "oemCryptoBuildInformation"

    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "oemCryptoBuildInformation: %s"

    invoke-static {v2, v1, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static bridge synthetic h(Lorg/chromium/media/MediaDrmBridge;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onPersistentLicenseNoExist(J)V

    return-void
.end method

.method public static bridge synthetic i(Lorg/chromium/media/MediaDrmBridge;JJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void
.end method

.method private static isCryptoSchemeSupported([BLjava/lang/String;)Z
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getUuidFromBytes([B)Ljava/util/UUID;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-static {p0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return p0

    :goto_1
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    const-string p1, "media"

    const-string v1, "Exception in isCryptoSchemeSupported"

    invoke-static {p1, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private isNativeMediaDrmBridgeValid()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWidevine()Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mKeySystemUuid:Ljava/util/UUID;

    sget-object v0, Lorg/chromium/media/MediaDrmBridge;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lorg/chromium/media/MediaDrmBridge;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V

    return-void
.end method

.method public static bridge synthetic k(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    return-void
.end method

.method public static bridge synthetic l(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onSessionExpirationUpdate(Lorg/chromium/media/MediaDrmSessionManager$SessionId;J)V

    return-void
.end method

.method private loadSession([BJ)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "media"

    const-string v2, "loadSession()"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$2;

    invoke-direct {v1, p0, p2, p3}, Lorg/chromium/media/MediaDrmBridge$2;-><init>(Lorg/chromium/media/MediaDrmBridge;J)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/media/MediaDrmSessionManager;->load([BLorg/chromium/base/Callback;)V

    return-void
.end method

.method private loadSessionWithLoadedStorage(Lorg/chromium/media/MediaDrmSessionManager$SessionId;J)V
    .locals 9

    const-string v0, "Internal error: No info for session: "

    const-string v1, "loadSession(%s)"

    const-string v2, "media"

    invoke-static {v2, v1, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v8, "Failed to open session to load license."

    const-wide/32 v6, 0x10c8e5

    move-object v3, p0

    move-wide v4, p2

    invoke-direct/range {v3 .. v8}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {v3, p1, v1}, Lorg/chromium/media/MediaDrmSessionManager;->setDrmId(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[B)V

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {v1, p1}, Lorg/chromium/media/MediaDrmSessionManager;->get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v5, 0x10c8e2

    move-object v2, p0

    move-wide v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->keyType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "Persistent license is waiting for release ack."

    invoke-static {v2, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolvedWithSession(JLorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->getPlaceholderKeysInfo(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[Ljava/lang/Object;ZZ)V

    return-void

    :cond_2
    new-instance v0, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;

    invoke-direct {v0, p1}, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;-><init>(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionEventDeferrer:Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->keySetId()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    invoke-direct {p0, p2, p3, p1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolvedWithSession(JLorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionEventDeferrer:Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;

    invoke-virtual {v0}, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;->fire()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionEventDeferrer:Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/media/MediaDrmBridge;->onPersistentLicenseLoadFail(Lorg/chromium/media/MediaDrmSessionManager$SessionId;JLjava/lang/Exception;)V

    goto :goto_2

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/media/MediaDrmBridge;->onPersistentLicenseLoadFail(Lorg/chromium/media/MediaDrmSessionManager$SessionId;JLjava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public static bridge synthetic m(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public static bridge synthetic n(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;Landroid/media/MediaDrm$KeyRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Landroid/media/MediaDrm$KeyRequest;)V

    return-void
.end method

.method public static bridge synthetic o(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    return-void
.end method

.method private onCreateError(I)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onCreateError(JI)V

    :cond_0
    return-void
.end method

.method private onMediaCryptoReady(Landroid/media/MediaCrypto;)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onMediaCryptoReady(JLorg/chromium/media/MediaDrmBridge;Landroid/media/MediaCrypto;)V

    :cond_0
    return-void
.end method

.method private onPersistentLicenseLoadFail(Lorg/chromium/media/MediaDrmSessionManager$SessionId;JLjava/lang/Exception;)V
    .locals 2
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    const-string v0, "media"

    const-string v1, "Persistent license load failed for session %s"

    invoke-static {v0, v1, p1, p4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->closeSessionNoException(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    iget-object p4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    new-instance v0, Lorg/chromium/media/MediaDrmBridge$3;

    invoke-direct {v0, p0, p2, p3}, Lorg/chromium/media/MediaDrmBridge$3;-><init>(Lorg/chromium/media/MediaDrmBridge;J)V

    invoke-virtual {p4, p1, v0}, Lorg/chromium/media/MediaDrmSessionManager;->clearPersistentSessionInfo(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method private onPersistentLicenseNoExist(J)V
    .locals 1

    invoke-static {}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->createNoExistSessionId()Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolvedWithSession(JLorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    return-void
.end method

.method private onPromiseRejected(JJLjava/lang/String;)V
    .locals 10

    const-string v0, "media"

    const-string v1, "onPromiseRejected: %s"

    invoke-static {v0, v1, p5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    move-object v4, p0

    move-wide v5, p1

    move-wide v7, p3

    move-object v9, p5

    invoke-interface/range {v1 .. v9}, Lorg/chromium/media/MediaDrmBridge$Natives;->onPromiseRejected(JLorg/chromium/media/MediaDrmBridge;JJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onPromiseResolved(J)V
    .locals 7

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    move-object v4, p0

    move-wide v5, p1

    invoke-interface/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge$Natives;->onPromiseResolved(JLorg/chromium/media/MediaDrmBridge;J)V

    :cond_0
    return-void
.end method

.method private onPromiseResolvedWithSession(JLorg/chromium/media/MediaDrmSessionManager$SessionId;)V
    .locals 8

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-virtual {p3}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object v7

    move-object v4, p0

    move-wide v5, p1

    invoke-interface/range {v1 .. v7}, Lorg/chromium/media/MediaDrmBridge$Natives;->onPromiseResolvedWithSession(JLorg/chromium/media/MediaDrmBridge;J[B)V

    :cond_0
    return-void
.end method

.method private onSessionClosed(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object p1

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onSessionClosed(JLorg/chromium/media/MediaDrmBridge;[B)V

    :cond_0
    return-void
.end method

.method private onSessionExpirationUpdate(Lorg/chromium/media/MediaDrmSessionManager$SessionId;J)V
    .locals 8

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object v5

    move-object v4, p0

    move-wide v6, p2

    invoke-interface/range {v1 .. v7}, Lorg/chromium/media/MediaDrmBridge$Natives;->onSessionExpirationUpdate(JLorg/chromium/media/MediaDrmBridge;[BJ)V

    :cond_0
    return-void
.end method

.method private onSessionKeysChange(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[Ljava/lang/Object;ZZ)V
    .locals 9

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object v5

    move-object v4, p0

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lorg/chromium/media/MediaDrmBridge$Natives;->onSessionKeysChange(JLorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;ZZ)V

    :cond_0
    return-void
.end method

.method private onSessionMessage(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Landroid/media/MediaDrm$KeyRequest;)V
    .locals 8

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result v6

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v7

    move-object v4, p0

    invoke-interface/range {v1 .. v7}, Lorg/chromium/media/MediaDrmBridge$Natives;->onSessionMessage(JLorg/chromium/media/MediaDrmBridge;[BI[B)V

    return-void
.end method

.method private openSession()[B
    .locals 4
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    const-string v0, "Cannot open a new session"

    const-string v1, "media"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :goto_0
    invoke-static {v1, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    return-object v2

    :goto_1
    throw p0

    :goto_2
    invoke-static {v1, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    return-object v2
.end method

.method private processProvisionResponse(Z[B)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "media"

    const-string v3, "processProvisionResponse()"

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/chromium/media/MediaDrmBridge;->provideProvisionResponse([B)Z

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->onProvisioned(Z)V

    iget-boolean p0, p0, Lorg/chromium/media/MediaDrmBridge;->mRequiresMediaCrypto:Z

    if-eqz p0, :cond_1

    sget-object p0, Lorg/chromium/media/MediaDrmBridge;->sMediaCryptoDeferrer:Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;

    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->onProvisionDone()V

    :cond_1
    return-void
.end method

.method private provision()V
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mOriginSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "media"

    const-string v2, "Calling provision() without an origin."

    invoke-static {v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-interface {v0, v2, v3, p0, v1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onProvisioningComplete(JLorg/chromium/media/MediaDrmBridge;Z)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->createTemporarySessionId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->closeSessionNoException(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    :cond_1
    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, p0, v4}, Lorg/chromium/media/MediaDrmBridge$Natives;->onProvisioningComplete(JLorg/chromium/media/MediaDrmBridge;Z)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-interface {v0, v2, v3, p0, v1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onProvisioningComplete(JLorg/chromium/media/MediaDrmBridge;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private release()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {v0}, Lorg/chromium/media/MediaDrmSessionManager;->getAllSessionIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const-string v2, "Force closing session %s"

    const-string v3, "media"

    invoke-static {v3, v2, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v2, v4}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "removeKeys failed: "

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->closeSessionNoException(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/media/MediaDrmSessionManager;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mStorage:Lorg/chromium/media/MediaDrmStorageBridge;

    invoke-direct {v0, v1}, Lorg/chromium/media/MediaDrmSessionManager;-><init>(Lorg/chromium/media/MediaDrmStorageBridge;)V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->closeSessionNoException(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    iput-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    :cond_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    iput-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    :cond_2
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    iput-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->onMediaCryptoReady(Landroid/media/MediaCrypto;)V

    :goto_2
    return-void
.end method

.method private removeSession([BJ)V
    .locals 12
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->getSessionIdByEmeId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/32 v3, 0x10c8e2

    const-string v5, "Session doesn\'t exist"

    move-object v0, p0

    move-wide v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "media"

    const-string v1, "removeSession(%s)"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {v0, p1}, Lorg/chromium/media/MediaDrmSessionManager;->get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal error: No info for session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v5, 0x10c8e2

    move-object v2, p0

    move-wide v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v5}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->keyType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-wide/32 v9, 0x10c8e7

    const-string v11, "Removing temporary session isn\'t implemented"

    move-object v6, p0

    move-wide v7, p2

    invoke-direct/range {v6 .. v11}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_2
    iget-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    new-instance v7, Lorg/chromium/media/MediaDrmBridge$4;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge$4;-><init>(Lorg/chromium/media/MediaDrmBridge;JLorg/chromium/media/MediaDrmSessionManager$SessionId;Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;)V

    const/4 p0, 0x3

    invoke-virtual {v6, p1, p0, v7}, Lorg/chromium/media/MediaDrmSessionManager;->setKeyType(Lorg/chromium/media/MediaDrmSessionManager$SessionId;ILorg/chromium/base/Callback;)V

    return-void
.end method

.method private setOrigin(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "Failed to set security origin %s"

    const-string v1, "Set origin: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "media"

    invoke-static {v3, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isWidevine()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    const-string p0, "Property origin isn\'t supported"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v5, "origin"

    invoke-virtual {v1, v5, p1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mOrigin:Ljava/lang/String;

    iput-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mOriginSet:Z
    :try_end_0
    .catch Landroid/media/MediaDrm$MediaDrmStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :goto_0
    invoke-static {v3, v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_1
    invoke-static {v3, v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    invoke-static {v3, v0, p1, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v0, "getDiagnosticInfo:"

    invoke-virtual {v1}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->displayMetrics()V

    :goto_3
    const-string p0, "Security origin %s not supported!"

    invoke-static {v3, p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method private setSecurityLevel(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "Failed to set security level %s"

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isWidevine()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "media"

    if-nez v1, :cond_0

    const-string p0, "Security level is not supported."

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->getSecurityLevel()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    const-string v5, "Security level: current %s, new %s"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "securityLevel"

    invoke-virtual {p0, v1, p1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {v4, v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {v4, v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    const-string p0, "Security level %s not supported!"

    invoke-static {v4, p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method private setServerCertificate([B)Z
    .locals 5
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Failed to set server certificate"

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isWidevine()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "media"

    if-nez v1, :cond_0

    const-string p0, "Setting server certificate is not supported."

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "serviceCertificate"

    invoke-virtual {p0, v1, p1}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {v4, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {v4, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v3
.end method

.method private startProvisioning()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "media"

    const-string v3, "startProvisioning"

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mRequiresMediaCrypto:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/media/MediaDrmBridge;->sMediaCryptoDeferrer:Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;

    invoke-virtual {v0}, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->onProvisionStarted()V

    :cond_1
    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->startProvisioningQorLater(Z)Z

    move-result p0

    return p0
.end method

.method private startProvisioningQorLater(Z)Z
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    const-string v0, "Failed to get provisioning request"

    const-string v1, "media"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object p1
    :try_end_0
    .catch Landroid/media/MediaDrm$SessionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/MediaDrm$MediaDrmStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mOriginSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mOrigin:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "<none>"

    :goto_0
    const-string v2, "Provisioning origin ID %s"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v3

    iget-wide v4, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v8

    move-object v6, p0

    invoke-interface/range {v3 .. v8}, Lorg/chromium/media/MediaDrmBridge$Natives;->onProvisionRequest(JLorg/chromium/media/MediaDrmBridge;Ljava/lang/String;[B)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_3

    :goto_1
    invoke-static {v1, v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->displayMetrics()V

    return v2

    :goto_2
    invoke-static {v1, v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "getDiagnosticInfo:"

    invoke-virtual {p1}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->displayMetrics()V

    return v2

    :goto_3
    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt p1, v4, :cond_1

    invoke-static {v3}, Lj9/a;->B(Landroid/media/MediaDrm$SessionException;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v2}, Lorg/chromium/media/MediaDrmBridge;->startProvisioningQorLater(Z)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {v1, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->displayMetrics()V

    return v2
.end method

.method private unprovision()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mOriginSet:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lorg/chromium/media/MediaDrmBridge;->UNPROVISION:[B

    invoke-virtual {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->provideProvisionResponse([B)Z

    return-void
.end method

.method private updateSession([B[BJ)V
    .locals 14
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p2

    const-string v8, "failed to provide key response"

    const-string v1, "Internal error: No info for session: "

    iget-object v2, v7, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    const-wide/32 v4, 0x10c8e1

    const-string v6, "updateSession() called when MediaDrm is null."

    move-object v1, p0

    move-wide/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->getSessionIdByEmeId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid session in updateSession: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/32 v4, 0x10c8e2

    move-object v1, p0

    move-wide/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "updateSession(%s)"

    const-string v10, "media"

    invoke-static {v10, v2, v9}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v2, v7, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {v2, v9}, Lorg/chromium/media/MediaDrmSessionManager;->get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object v11

    if-nez v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/32 v4, 0x10c8e2

    move-object v1, p0

    move-wide/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v11}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->keyType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    move v12, v1

    goto :goto_0

    :cond_3
    move v12, v3

    :goto_0
    if-eqz v12, :cond_4

    const-string v1, "updateSession() for key release"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v10, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v7, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v9}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->keySetId()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, v7, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v9}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v0

    :goto_1
    new-instance v13, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v9

    move-wide/from16 v4, p3

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;-><init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;JZ)V

    if-eqz v12, :cond_5

    iget-object v0, v7, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {v0, v9, v13}, Lorg/chromium/media/MediaDrmSessionManager;->clearPersistentSessionInfo(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Lorg/chromium/base/Callback;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->keyType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    if-eqz v0, :cond_6

    array-length v1, v0

    if-lez v1, :cond_6

    iget-object v1, v7, Lorg/chromium/media/MediaDrmBridge;->mSessionManager:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-virtual {v1, v9, v0, v13}, Lorg/chromium/media/MediaDrmSessionManager;->setKeySetId(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BLorg/chromium/base/Callback;)V

    goto :goto_2

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v0}, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->onResult(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :goto_3
    invoke-static {v10, v8, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x10c8e6

    goto :goto_7

    :goto_4
    invoke-static {v10, v8, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x10c8ed

    goto :goto_7

    :goto_5
    invoke-static {v10, v8, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x10c8ec

    goto :goto_7

    :goto_6
    invoke-static {v10, v8, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->unprovision()V

    const v0, 0x10c8e3

    :goto_7
    int-to-long v4, v0

    const-string v6, "Update session failed."

    move-object v1, p0

    move-wide/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JJLjava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    return-void
.end method


# virtual methods
.method public onProvisioned(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mRequiresMediaCrypto:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/media/MediaDrmBridgeJni;->get()Lorg/chromium/media/MediaDrmBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/media/MediaDrmBridge$Natives;->onProvisioningComplete(JLorg/chromium/media/MediaDrmBridge;Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    return-void

    :cond_2
    iget-boolean p1, p0, Lorg/chromium/media/MediaDrmBridge;->mOriginSet:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->createMediaCrypto()Z

    return-void

    :cond_3
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mStorage:Lorg/chromium/media/MediaDrmStorageBridge;

    new-instance v0, Lorg/chromium/media/MediaDrmBridge$5;

    invoke-direct {v0, p0}, Lorg/chromium/media/MediaDrmBridge$5;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    invoke-virtual {p1, v0}, Lorg/chromium/media/MediaDrmStorageBridge;->onProvisioned(Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public provideProvisionResponse([B)Z
    .locals 4
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    const-string v0, "failed to provide provision response"

    const/4 v1, 0x0

    const-string v2, "media"

    if-eqz p1, :cond_1

    array-length v3, p1

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {v2, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {v2, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v1

    :cond_1
    :goto_3
    const-string p0, "Invalid provision response."

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
