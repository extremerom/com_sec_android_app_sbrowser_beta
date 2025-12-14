.class public interface abstract Lorg/chromium/blink/mojom/MediaSessionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/MediaSessionService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract disableAction(I)V
.end method

.method public abstract enableAction(I)V
.end method

.method public abstract setCameraState(I)V
.end method

.method public abstract setClient(Lorg/chromium/blink/mojom/MediaSessionClient;)V
.end method

.method public abstract setMetadata(Lorg/chromium/blink/mojom/SpecMediaMetadata;)V
.end method

.method public abstract setMicrophoneState(I)V
.end method

.method public abstract setPlaybackState(I)V
.end method

.method public abstract setPositionState(Lorg/chromium/media_session/mojom/MediaPosition;)V
.end method
