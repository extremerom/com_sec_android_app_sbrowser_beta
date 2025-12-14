.class public interface abstract Lorg/chromium/blink/mojom/RendererAudioOutputStreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RendererAudioOutputStreamFactory$RequestDeviceAuthorization_Response;,
        Lorg/chromium/blink/mojom/RendererAudioOutputStreamFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract requestDeviceAuthorization(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;Lorg/chromium/blink/mojom/RendererAudioOutputStreamFactory$RequestDeviceAuthorization_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioOutputStreamProvider;",
            ">;",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Ljava/lang/String;",
            "Lorg/chromium/blink/mojom/RendererAudioOutputStreamFactory$RequestDeviceAuthorization_Response;",
            ")V"
        }
    .end annotation
.end method
