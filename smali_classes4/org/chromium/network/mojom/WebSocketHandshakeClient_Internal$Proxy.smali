.class final Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/WebSocketHandshakeClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal;
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
.method public onConnectionEstablished(Lorg/chromium/network/mojom/WebSocket;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/WebSocketHandshakeResponse;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/WebSocket;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/WebSocketClient;",
            ">;",
            "Lorg/chromium/network/mojom/WebSocketHandshakeResponse;",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            "Lorg/chromium/mojo/system/DataPipe$ProducerHandle;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnConnectionEstablishedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnConnectionEstablishedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnConnectionEstablishedParams;->socket:Lorg/chromium/network/mojom/WebSocket;

    iput-object p2, v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnConnectionEstablishedParams;->clientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p3, v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnConnectionEstablishedParams;->response:Lorg/chromium/network/mojom/WebSocketHandshakeResponse;

    iput-object p4, v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnConnectionEstablishedParams;->readable:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p5, v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnConnectionEstablishedParams;->writable:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onFailure(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnFailureParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnFailureParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnFailureParams;->message:Ljava/lang/String;

    iput p2, v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnFailureParams;->netError:I

    iput p3, v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnFailureParams;->responseCode:I

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

.method public onOpeningHandshakeStarted(Lorg/chromium/network/mojom/WebSocketHandshakeRequest;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnOpeningHandshakeStartedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnOpeningHandshakeStartedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal$WebSocketHandshakeClientOnOpeningHandshakeStartedParams;->request:Lorg/chromium/network/mojom/WebSocketHandshakeRequest;

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
