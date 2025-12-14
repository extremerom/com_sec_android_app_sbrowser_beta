.class public interface abstract Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract associateInputAndOutputForAec(Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;)V
.end method

.method public abstract createStream(Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioParameters;ZILorg/chromium/media/mojom/AudioProcessingConfig;)V
.end method
