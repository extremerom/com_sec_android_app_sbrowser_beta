.class final Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal;
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
.method public streamCreated(Lorg/chromium/media/mojom/AudioInputStream;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/ReadWriteAudioDataPipe;ZLorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/mojom/AudioInputStream;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioInputStreamClient;",
            ">;",
            "Lorg/chromium/media/mojom/ReadWriteAudioDataPipe;",
            "Z",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal$RendererAudioInputStreamFactoryClientStreamCreatedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal$RendererAudioInputStreamFactoryClientStreamCreatedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal$RendererAudioInputStreamFactoryClientStreamCreatedParams;->stream:Lorg/chromium/media/mojom/AudioInputStream;

    iput-object p2, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal$RendererAudioInputStreamFactoryClientStreamCreatedParams;->clientRequest:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p3, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal$RendererAudioInputStreamFactoryClientStreamCreatedParams;->dataPipe:Lorg/chromium/media/mojom/ReadWriteAudioDataPipe;

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal$RendererAudioInputStreamFactoryClientStreamCreatedParams;->initiallyMuted:Z

    iput-object p5, v0, Lorg/chromium/blink/mojom/RendererAudioInputStreamFactoryClient_Internal$RendererAudioInputStreamFactoryClientStreamCreatedParams;->streamId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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
