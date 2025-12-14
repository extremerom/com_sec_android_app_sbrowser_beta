.class final Lorg/chromium/media/mojom/InterfaceFactory_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/InterfaceFactory$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/InterfaceFactory_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public createAudioDecoder(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioDecoder;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateAudioDecoderParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateAudioDecoderParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateAudioDecoderParams;->audioDecoder:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createAudioEncoder(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioEncoder;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateAudioEncoderParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateAudioEncoderParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateAudioEncoderParams;->audioEncoder:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createCdm(Lorg/chromium/media/mojom/CdmConfig;Lorg/chromium/media/mojom/InterfaceFactory$CreateCdm_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateCdmParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateCdmParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateCdmParams;->cdmConfig:Lorg/chromium/media/mojom/CdmConfig;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateCdmResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateCdmResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/InterfaceFactory$CreateCdm_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createDefaultRenderer(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/Renderer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateDefaultRendererParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateDefaultRendererParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateDefaultRendererParams;->audioDeviceId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateDefaultRendererParams;->renderer:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createFlingingRenderer(Ljava/lang/String;Lorg/chromium/media/mojom/FlingingRendererClientExtension;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 1
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

    new-instance v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateFlingingRendererParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateFlingingRendererParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateFlingingRendererParams;->presentationId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateFlingingRendererParams;->clientExtension:Lorg/chromium/media/mojom/FlingingRendererClientExtension;

    iput-object p3, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateFlingingRendererParams;->renderer:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createMediaPlayerRenderer(Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 1
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

    new-instance v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateMediaPlayerRendererParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateMediaPlayerRendererParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateMediaPlayerRendererParams;->clientExtension:Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension;

    iput-object p2, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateMediaPlayerRendererParams;->renderer:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p3, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateMediaPlayerRendererParams;->rendererExtension:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createVideoDecoder(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/VideoDecoder;)V
    .locals 2
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

    new-instance v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateVideoDecoderParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateVideoDecoderParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateVideoDecoderParams;->videoDecoder:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/media/mojom/InterfaceFactory_Internal$InterfaceFactoryCreateVideoDecoderParams;->dstVideoDecoder:Lorg/chromium/media/mojom/VideoDecoder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
