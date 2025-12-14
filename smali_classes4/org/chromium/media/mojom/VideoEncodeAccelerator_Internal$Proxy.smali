.class final Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/VideoEncodeAccelerator$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal;
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
.method public encode(Lorg/chromium/media/mojom/VideoFrame;Lorg/chromium/media/mojom/VideoEncodeOptions;Lorg/chromium/media/mojom/VideoEncodeAccelerator$Encode_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeParams;->frame:Lorg/chromium/media/mojom/VideoFrame;

    iput-object p2, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeParams;->options:Lorg/chromium/media/mojom/VideoEncodeOptions;

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

    const-wide/16 v2, 0x0

    invoke-direct {p2, v1, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/VideoEncodeAccelerator$Encode_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public flush(Lorg/chromium/media/mojom/VideoEncodeAccelerator$Flush_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushParams;-><init>()V

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

    const/4 v6, 0x6

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/VideoEncodeAccelerator$Flush_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public initialize(Lorg/chromium/media/mojom/VideoEncodeAcceleratorConfig;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/MediaLog;Lorg/chromium/media/mojom/VideoEncodeAccelerator$Initialize_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;->config:Lorg/chromium/media/mojom/VideoEncodeAcceleratorConfig;

    iput-object p2, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p3, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;->mediaLog:Lorg/chromium/media/mojom/MediaLog;

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

    const/4 v3, 0x0

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/VideoEncodeAccelerator$Initialize_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public isFlushSupported(Lorg/chromium/media/mojom/VideoEncodeAccelerator$IsFlushSupported_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedParams;-><init>()V

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

    const/4 v6, 0x5

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/VideoEncodeAccelerator$IsFlushSupported_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public requestEncodingParametersChangeWithBitrate(Lorg/chromium/media/mojom/Bitrate;ILorg/chromium/gfx/mojom/Size;)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;->bitrate:Lorg/chromium/media/mojom/Bitrate;

    iput p2, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;->framerate:I

    iput-object p3, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;->size:Lorg/chromium/gfx/mojom/Size;

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

.method public requestEncodingParametersChangeWithLayers(Lorg/chromium/media/mojom/VideoBitrateAllocation;ILorg/chromium/gfx/mojom/Size;)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;->bitrateAllocation:Lorg/chromium/media/mojom/VideoBitrateAllocation;

    iput p2, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;->framerate:I

    iput-object p3, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;->size:Lorg/chromium/gfx/mojom/Size;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public useOutputBitstreamBuffer(ILorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;)V
    .locals 2

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorUseOutputBitstreamBufferParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorUseOutputBitstreamBufferParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorUseOutputBitstreamBufferParams;->bitstreamBufferId:I

    iput-object p2, v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorUseOutputBitstreamBufferParams;->region:Lorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
