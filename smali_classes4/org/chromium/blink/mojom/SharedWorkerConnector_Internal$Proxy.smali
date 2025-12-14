.class final Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/SharedWorkerConnector$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal;
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
.method public connect(Lorg/chromium/blink/mojom/SharedWorkerInfo;Lorg/chromium/blink/mojom/SharedWorkerClient;ILorg/chromium/blink/mojom/MessagePortDescriptor;Lorg/chromium/blink/mojom/BlobUrlToken;J)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal$SharedWorkerConnectorConnectParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal$SharedWorkerConnectorConnectParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal$SharedWorkerConnectorConnectParams;->info:Lorg/chromium/blink/mojom/SharedWorkerInfo;

    iput-object p2, v0, Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal$SharedWorkerConnectorConnectParams;->client:Lorg/chromium/blink/mojom/SharedWorkerClient;

    iput p3, v0, Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal$SharedWorkerConnectorConnectParams;->creationContextType:I

    iput-object p4, v0, Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal$SharedWorkerConnectorConnectParams;->messagePort:Lorg/chromium/blink/mojom/MessagePortDescriptor;

    iput-object p5, v0, Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal$SharedWorkerConnectorConnectParams;->blobUrlToken:Lorg/chromium/blink/mojom/BlobUrlToken;

    iput-wide p6, v0, Lorg/chromium/blink/mojom/SharedWorkerConnector_Internal$SharedWorkerConnectorConnectParams;->clientUkmSourceId:J

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
