.class interface abstract Lorg/chromium/media/MediaDrmBridge$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract onCreateError(JI)V
.end method

.method public abstract onMediaCryptoReady(JLorg/chromium/media/MediaDrmBridge;Landroid/media/MediaCrypto;)V
.end method

.method public abstract onPromiseRejected(JLorg/chromium/media/MediaDrmBridge;JJLjava/lang/String;)V
.end method

.method public abstract onPromiseResolved(JLorg/chromium/media/MediaDrmBridge;J)V
.end method

.method public abstract onPromiseResolvedWithSession(JLorg/chromium/media/MediaDrmBridge;J[B)V
.end method

.method public abstract onProvisionRequest(JLorg/chromium/media/MediaDrmBridge;Ljava/lang/String;[B)V
.end method

.method public abstract onProvisioningComplete(JLorg/chromium/media/MediaDrmBridge;Z)V
.end method

.method public abstract onSessionClosed(JLorg/chromium/media/MediaDrmBridge;[B)V
.end method

.method public abstract onSessionExpirationUpdate(JLorg/chromium/media/MediaDrmBridge;[BJ)V
.end method

.method public abstract onSessionKeysChange(JLorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;ZZ)V
.end method

.method public abstract onSessionMessage(JLorg/chromium/media/MediaDrmBridge;[BI[B)V
.end method
