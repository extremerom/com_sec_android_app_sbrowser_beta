.class final Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal;
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
.method public associateInputAndOutputForAec(Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryAssociateInputAndOutputForAecParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryAssociateInputAndOutputForAecParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryAssociateInputAndOutputForAecParams;->inputStreamId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryAssociateInputAndOutputForAecParams;->outputDeviceId:Ljava/lang/String;

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

.method public createStream(Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioParameters;ZILorg/chromium/media/mojom/AudioProcessingConfig;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryCreateStreamParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryCreateStreamParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryCreateStreamParams;->client:Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient;

    iput-object p2, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryCreateStreamParams;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p3, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryCreateStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryCreateStreamParams;->automaticGainControl:Z

    iput p5, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryCreateStreamParams;->sharedMemoryCount:I

    iput-object p6, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactory_Internal$RendererAudioInputStreamFactoryCreateStreamParams;->processingConfig:Lorg/chromium/media/mojom/AudioProcessingConfig;

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
