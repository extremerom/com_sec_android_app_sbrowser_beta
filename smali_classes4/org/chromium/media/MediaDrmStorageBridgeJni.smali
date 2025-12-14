.class Lorg/chromium/media/MediaDrmStorageBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/MediaDrmStorageBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/media/MediaDrmStorageBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/media/MediaDrmStorageBridgeJni;

    invoke-direct {v0}, Lorg/chromium/media/MediaDrmStorageBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onClearInfo(J[BLorg/chromium/base/Callback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MYa_y6Dg(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onLoadInfo(J[BLorg/chromium/base/Callback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mmi_qOX8(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onProvisioned(JLorg/chromium/base/Callback;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->ME6vNmlv(JLjava/lang/Object;)V

    return-void
.end method

.method public onSaveInfo(JLorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MeALR1v2(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
