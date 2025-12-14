.class Lorg/chromium/media/MediaPlayerListenerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/MediaPlayerListener$Natives;


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

.method public static get()Lorg/chromium/media/MediaPlayerListener$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/media/MediaPlayerListenerJni;

    invoke-direct {v0}, Lorg/chromium/media/MediaPlayerListenerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onMediaError(JLorg/chromium/media/MediaPlayerListener;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Myj2LnkZ(JLjava/lang/Object;I)V

    return-void
.end method

.method public onMediaPrepared(JLorg/chromium/media/MediaPlayerListener;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MQTompEl(JLjava/lang/Object;)V

    return-void
.end method

.method public onPlaybackComplete(JLorg/chromium/media/MediaPlayerListener;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MX$D6jYE(JLjava/lang/Object;)V

    return-void
.end method

.method public onVideoSizeChanged(JLorg/chromium/media/MediaPlayerListener;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->Mfq$ZJpW(JLjava/lang/Object;II)V

    return-void
.end method
