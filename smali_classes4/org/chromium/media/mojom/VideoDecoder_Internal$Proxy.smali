.class final Lorg/chromium/media/mojom/VideoDecoder_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/VideoDecoder$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/VideoDecoder_Internal;
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
.method public construct(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/MediaLog;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/media/mojom/CommandBufferId;Lorg/chromium/gfx/mojom/ColorSpace;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;",
            "Lorg/chromium/media/mojom/MediaLog;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/VideoFrameHandleReleaser;",
            ">;",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            "Lorg/chromium/media/mojom/CommandBufferId;",
            "Lorg/chromium/gfx/mojom/ColorSpace;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p2, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->mediaLog:Lorg/chromium/media/mojom/MediaLog;

    iput-object p3, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->videoFrameHandleReleaser:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p4, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->decoderBufferPipe:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p5, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->commandBufferId:Lorg/chromium/media/mojom/CommandBufferId;

    iput-object p6, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->targetColorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public decode(Lorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/VideoDecoder$Decode_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderDecodeParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderDecodeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderDecodeParams;->buffer:Lorg/chromium/media/mojom/DecoderBuffer;

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

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderDecodeResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderDecodeResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/VideoDecoder$Decode_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getSupportedConfigs(Lorg/chromium/media/mojom/VideoDecoder$GetSupportedConfigs_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderGetSupportedConfigsParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderGetSupportedConfigsParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderGetSupportedConfigsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderGetSupportedConfigsResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/VideoDecoder$GetSupportedConfigs_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public initialize(Lorg/chromium/media/mojom/VideoDecoderConfig;ZLorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoDecoder$Initialize_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeParams;->config:Lorg/chromium/media/mojom/VideoDecoderConfig;

    iput-boolean p2, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeParams;->lowDelay:Z

    iput-object p3, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeParams;->cdmId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/VideoDecoder$Initialize_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onOverlayInfoChanged(Lorg/chromium/media/mojom/OverlayInfo;)V
    .locals 3

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderOnOverlayInfoChangedParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderOnOverlayInfoChangedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderOnOverlayInfoChangedParams;->overlayInfo:Lorg/chromium/media/mojom/OverlayInfo;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public reset(Lorg/chromium/media/mojom/VideoDecoder$Reset_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderResetParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderResetParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderResetResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderResetResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/VideoDecoder$Reset_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
