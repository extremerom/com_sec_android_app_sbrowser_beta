.class public interface abstract Lorg/chromium/media/mojom/InterfaceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/InterfaceFactory$CreateCdm_Response;,
        Lorg/chromium/media/mojom/InterfaceFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createAudioDecoder(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioDecoder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createAudioEncoder(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioEncoder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createCdm(Lorg/chromium/media/mojom/CdmConfig;Lorg/chromium/media/mojom/InterfaceFactory$CreateCdm_Response;)V
.end method

.method public abstract createDefaultRenderer(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/Renderer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createFlingingRenderer(Ljava/lang/String;Lorg/chromium/media/mojom/FlingingRendererClientExtension;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/media/mojom/FlingingRendererClientExtension;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/Renderer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createMediaPlayerRenderer(Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/Renderer;",
            ">;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/MediaPlayerRendererExtension;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createVideoDecoder(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/VideoDecoder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/VideoDecoder;",
            ">;",
            "Lorg/chromium/media/mojom/VideoDecoder;",
            ")V"
        }
    .end annotation
.end method
