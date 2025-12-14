.class final Lorg/chromium/network/mojom/NetworkChangeManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/NetworkChangeManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkChangeManager_Internal;
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
.method public onNetworkChanged(ZZZIZI)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerOnNetworkChangedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerOnNetworkChangedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerOnNetworkChangedParams;->dnsChanged:Z

    iput-boolean p2, v0, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerOnNetworkChangedParams;->ipAddressChanged:Z

    iput-boolean p3, v0, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerOnNetworkChangedParams;->connectionTypeChanged:Z

    iput p4, v0, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerOnNetworkChangedParams;->newConnectionType:I

    iput-boolean p5, v0, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerOnNetworkChangedParams;->connectionSubtypeChanged:Z

    iput p6, v0, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerOnNetworkChangedParams;->newConnectionSubtype:I

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

.method public requestNotifications(Lorg/chromium/network/mojom/NetworkChangeManagerClient;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerRequestNotificationsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerRequestNotificationsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkChangeManager_Internal$NetworkChangeManagerRequestNotificationsParams;->clientRemote:Lorg/chromium/network/mojom/NetworkChangeManagerClient;

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
