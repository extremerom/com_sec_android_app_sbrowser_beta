.class final Lorg/chromium/network/mojom/UdpSocket_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/UdpSocket$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/UdpSocket_Internal;
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
.method public bind(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/UdpSocketOptions;Lorg/chromium/network/mojom/UdpSocket$Bind_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketBindParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketBindParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketBindParams;->localAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iput-object p2, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketBindParams;->socketOptions:Lorg/chromium/network/mojom/UdpSocketOptions;

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

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketBindResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketBindResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UdpSocket$Bind_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public close()V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketCloseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketCloseParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public connect(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/UdpSocketOptions;Lorg/chromium/network/mojom/UdpSocket$Connect_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketConnectParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketConnectParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketConnectParams;->remoteAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iput-object p2, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketConnectParams;->socketOptions:Lorg/chromium/network/mojom/UdpSocketOptions;

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

    new-instance p2, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketConnectResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketConnectResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UdpSocket$Connect_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public joinGroup(Lorg/chromium/network/mojom/IpAddress;Lorg/chromium/network/mojom/UdpSocket$JoinGroup_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketJoinGroupParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketJoinGroupParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketJoinGroupParams;->groupAddress:Lorg/chromium/network/mojom/IpAddress;

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

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketJoinGroupResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketJoinGroupResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UdpSocket$JoinGroup_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public leaveGroup(Lorg/chromium/network/mojom/IpAddress;Lorg/chromium/network/mojom/UdpSocket$LeaveGroup_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketLeaveGroupParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketLeaveGroupParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketLeaveGroupParams;->groupAddress:Lorg/chromium/network/mojom/IpAddress;

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

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketLeaveGroupResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketLeaveGroupResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UdpSocket$LeaveGroup_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public receiveMore(I)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketReceiveMoreParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketReceiveMoreParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketReceiveMoreParams;->numAdditionalDatagrams:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public receiveMoreWithBufferSize(II)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketReceiveMoreWithBufferSizeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketReceiveMoreWithBufferSizeParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketReceiveMoreWithBufferSizeParams;->numAdditionalDatagrams:I

    iput p2, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketReceiveMoreWithBufferSizeParams;->bufferSize:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public send(Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/UdpSocket$Send_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendParams;->data:Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;

    iput-object p2, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

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

    const/16 v4, 0xa

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UdpSocket$Send_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public sendTo(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/UdpSocket$SendTo_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendToParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendToParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendToParams;->destAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iput-object p2, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendToParams;->data:Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;

    iput-object p3, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendToParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

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

    const/16 v3, 0x9

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendToResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSendToResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UdpSocket$SendTo_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setBroadcast(ZLorg/chromium/network/mojom/UdpSocket$SetBroadcast_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetBroadcastParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetBroadcastParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetBroadcastParams;->broadcast:Z

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

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetBroadcastResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetBroadcastResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UdpSocket$SetBroadcast_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setReceiveBufferSize(ILorg/chromium/network/mojom/UdpSocket$SetReceiveBufferSize_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;->receiveBufferSize:I

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

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UdpSocket$SetReceiveBufferSize_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setSendBufferSize(ILorg/chromium/network/mojom/UdpSocket$SetSendBufferSize_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;->sendBufferSize:I

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

    new-instance v0, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetSendBufferSizeResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/UdpSocket_Internal$UdpSocketSetSendBufferSizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UdpSocket$SetSendBufferSize_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
