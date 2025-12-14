.class Lorg/chromium/media/MediaCodecBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/MediaCodecBridge$Natives;


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

.method public static get()Lorg/chromium/media/MediaCodecBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/media/MediaCodecBridgeJni;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onBuffersAvailable(JLorg/chromium/media/MediaCodecBridge;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MNqjfk23(JLjava/lang/Object;)V

    return-void
.end method
