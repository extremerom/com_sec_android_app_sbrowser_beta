.class final Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/TcpConnectedSocket$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/TcpConnectedSocket_Internal;
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
.method public setKeepAlive(ZILorg/chromium/network/mojom/TcpConnectedSocket$SetKeepAlive_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveParams;->enable:Z

    iput p2, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveParams;->delaySecs:I

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

    const/4 v4, 0x4

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/TcpConnectedSocket$SetKeepAlive_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setNoDelay(ZLorg/chromium/network/mojom/TcpConnectedSocket$SetNoDelay_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetNoDelayParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetNoDelayParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetNoDelayParams;->noDelay:Z

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

    new-instance v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetNoDelayResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetNoDelayResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/TcpConnectedSocket$SetNoDelay_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setReceiveBufferSize(ILorg/chromium/network/mojom/TcpConnectedSocket$SetReceiveBufferSize_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetReceiveBufferSizeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetReceiveBufferSizeParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetReceiveBufferSizeParams;->receiveBufferSize:I

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

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetReceiveBufferSizeResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetReceiveBufferSizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/TcpConnectedSocket$SetReceiveBufferSize_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setSendBufferSize(ILorg/chromium/network/mojom/TcpConnectedSocket$SetSendBufferSize_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetSendBufferSizeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetSendBufferSizeParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetSendBufferSizeParams;->sendBufferSize:I

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

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetSendBufferSizeResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetSendBufferSizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/TcpConnectedSocket$SetSendBufferSize_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public upgradeToTls(Lorg/chromium/network/mojom/HostPortPair;Lorg/chromium/network/mojom/TlsClientSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/SocketObserver;Lorg/chromium/network/mojom/TcpConnectedSocket$UpgradeToTls_Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/HostPortPair;",
            "Lorg/chromium/network/mojom/TlsClientSocketOptions;",
            "Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/TlsClientSocket;",
            ">;",
            "Lorg/chromium/network/mojom/SocketObserver;",
            "Lorg/chromium/network/mojom/TcpConnectedSocket$UpgradeToTls_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsParams;->hostPortPair:Lorg/chromium/network/mojom/HostPortPair;

    iput-object p2, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsParams;->options:Lorg/chromium/network/mojom/TlsClientSocketOptions;

    iput-object p3, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iput-object p4, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p5, v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsParams;->observer:Lorg/chromium/network/mojom/SocketObserver;

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

    const-wide/16 p4, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/TcpConnectedSocket$UpgradeToTls_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
