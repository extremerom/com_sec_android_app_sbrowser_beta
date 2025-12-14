.class final Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal;
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
.method public bitstreamBufferReady(ILorg/chromium/media/mojom/BitstreamBufferMetadata;)V
    .locals 2

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientBitstreamBufferReadyParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientBitstreamBufferReadyParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientBitstreamBufferReadyParams;->bitstreamBufferId:I

    iput-object p2, v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientBitstreamBufferReadyParams;->metadata:Lorg/chromium/media/mojom/BitstreamBufferMetadata;

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

.method public notifyEncoderInfoChange(Lorg/chromium/media/mojom/VideoEncoderInfo;)V
    .locals 3

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientNotifyEncoderInfoChangeParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientNotifyEncoderInfoChangeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientNotifyEncoderInfoChangeParams;->info:Lorg/chromium/media/mojom/VideoEncoderInfo;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyErrorStatus(Lorg/chromium/media/mojom/EncoderStatus;)V
    .locals 3

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientNotifyErrorStatusParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientNotifyErrorStatusParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientNotifyErrorStatusParams;->status:Lorg/chromium/media/mojom/EncoderStatus;

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

.method public requireBitstreamBuffers(ILorg/chromium/gfx/mojom/Size;I)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientRequireBitstreamBuffersParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientRequireBitstreamBuffersParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientRequireBitstreamBuffersParams;->inputCount:I

    iput-object p2, v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientRequireBitstreamBuffersParams;->inputCodedSize:Lorg/chromium/gfx/mojom/Size;

    iput p3, v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientRequireBitstreamBuffersParams;->outputBufferSize:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
