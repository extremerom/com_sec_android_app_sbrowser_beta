.class public interface abstract Lorg/chromium/media/mojom/AudioDecoderClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioDecoderClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onBufferDecoded(Lorg/chromium/media/mojom/AudioBuffer;)V
.end method

.method public abstract onWaiting(I)V
.end method
