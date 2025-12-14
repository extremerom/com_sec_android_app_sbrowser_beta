.class final Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/RestrictedUdpSocket$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal;
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
.method public receiveMore(I)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketReceiveMoreParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketReceiveMoreParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketReceiveMoreParams;->numAdditionalDatagrams:I

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

.method public send(Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/RestrictedUdpSocket$Send_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendParams;->data:Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;

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

    new-instance v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/RestrictedUdpSocket$Send_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public sendTo(Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/HostPortPair;ILorg/chromium/network/mojom/RestrictedUdpSocket$SendTo_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToParams;->data:Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;

    iput-object p2, v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToParams;->destAddr:Lorg/chromium/network/mojom/HostPortPair;

    iput p3, v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToParams;->dnsQueryType:I

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

    new-instance p2, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/RestrictedUdpSocket$SendTo_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
