.class final Lorg/chromium/network/mojom/P2pSocketManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/P2pSocketManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/P2pSocketManager_Internal;
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
.method public createSocket(ILorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/P2pPortRange;Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/P2pSocketClient;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/chromium/network/mojom/IpEndPoint;",
            "Lorg/chromium/network/mojom/P2pPortRange;",
            "Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;",
            "Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/network/mojom/P2pSocketClient;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/P2pSocket;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->type:I

    iput-object p2, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->localAddress:Lorg/chromium/network/mojom/IpEndPoint;

    iput-object p3, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->portRange:Lorg/chromium/network/mojom/P2pPortRange;

    iput-object p4, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->remoteAddress:Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;

    iput-object p5, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iput-object p6, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->devtoolsToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p7, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->client:Lorg/chromium/network/mojom/P2pSocketClient;

    iput-object p8, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

.method public getHostAddress(Ljava/lang/String;ZLorg/chromium/network/mojom/P2pSocketManager$GetHostAddress_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressParams;->hostName:Ljava/lang/String;

    iput-boolean p2, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressParams;->enableMdns:Z

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

    new-instance p2, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/P2pSocketManager$GetHostAddress_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getHostAddressWithFamily(Ljava/lang/String;IZLorg/chromium/network/mojom/P2pSocketManager$GetHostAddressWithFamily_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;->hostName:Ljava/lang/String;

    iput p2, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;->addressFamily:I

    iput-boolean p3, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;->enableMdns:Z

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

    new-instance p2, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/P2pSocketManager$GetHostAddressWithFamily_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public startNetworkNotifications(Lorg/chromium/network/mojom/P2pNetworkNotificationClient;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->client:Lorg/chromium/network/mojom/P2pNetworkNotificationClient;

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
