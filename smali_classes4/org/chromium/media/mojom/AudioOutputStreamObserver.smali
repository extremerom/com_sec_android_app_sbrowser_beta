.class public interface abstract Lorg/chromium/media/mojom/AudioOutputStreamObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioOutputStreamObserver$Proxy;,
        Lorg/chromium/media/mojom/AudioOutputStreamObserver$DisconnectReason;
    }
.end annotation


# virtual methods
.method public abstract didChangeAudibleState(Z)V
.end method

.method public abstract didStartPlaying()V
.end method

.method public abstract didStopPlaying()V
.end method
