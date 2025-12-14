.class Lorg/chromium/media/MediaDrmStorageBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaDrmStorageBridge$Natives;,
        Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeMediaDrmStorageBridge:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/media/MediaDrmStorageBridge;->mNativeMediaDrmStorageBridge:J

    return-void
.end method

.method private isNativeMediaDrmStorageValid()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/media/MediaDrmStorageBridge;->mNativeMediaDrmStorageBridge:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clearInfo([BLorg/chromium/base/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmStorageBridge;->isNativeMediaDrmStorageValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmStorageBridgeJni;->get()Lorg/chromium/media/MediaDrmStorageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmStorageBridge;->mNativeMediaDrmStorageBridge:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/media/MediaDrmStorageBridge$Natives;->onClearInfo(J[BLorg/chromium/base/Callback;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loadInfo([BLorg/chromium/base/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmStorageBridge;->isNativeMediaDrmStorageValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmStorageBridgeJni;->get()Lorg/chromium/media/MediaDrmStorageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmStorageBridge;->mNativeMediaDrmStorageBridge:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/media/MediaDrmStorageBridge$Natives;->onLoadInfo(J[BLorg/chromium/base/Callback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onProvisioned(Lorg/chromium/base/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmStorageBridge;->isNativeMediaDrmStorageValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmStorageBridgeJni;->get()Lorg/chromium/media/MediaDrmStorageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmStorageBridge;->mNativeMediaDrmStorageBridge:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/media/MediaDrmStorageBridge$Natives;->onProvisioned(JLorg/chromium/base/Callback;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public saveInfo(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;Lorg/chromium/base/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmStorageBridge;->isNativeMediaDrmStorageValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaDrmStorageBridgeJni;->get()Lorg/chromium/media/MediaDrmStorageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmStorageBridge;->mNativeMediaDrmStorageBridge:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/media/MediaDrmStorageBridge$Natives;->onSaveInfo(JLorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;Lorg/chromium/base/Callback;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
