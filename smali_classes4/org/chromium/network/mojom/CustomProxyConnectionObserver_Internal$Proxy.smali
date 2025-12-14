.class final Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/CustomProxyConnectionObserver$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal;
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
.method public onFallback(Lorg/chromium/network/mojom/ProxyChain;I)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$CustomProxyConnectionObserverOnFallbackParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$CustomProxyConnectionObserverOnFallbackParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$CustomProxyConnectionObserverOnFallbackParams;->badChain:Lorg/chromium/network/mojom/ProxyChain;

    iput p2, v0, Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$CustomProxyConnectionObserverOnFallbackParams;->netError:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onTunnelHeadersReceived(Lorg/chromium/network/mojom/ProxyChain;JLorg/chromium/network/mojom/HttpResponseHeaders;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$CustomProxyConnectionObserverOnTunnelHeadersReceivedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$CustomProxyConnectionObserverOnTunnelHeadersReceivedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$CustomProxyConnectionObserverOnTunnelHeadersReceivedParams;->proxyChain:Lorg/chromium/network/mojom/ProxyChain;

    iput-wide p2, v0, Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$CustomProxyConnectionObserverOnTunnelHeadersReceivedParams;->chainIndex:J

    iput-object p4, v0, Lorg/chromium/network/mojom/CustomProxyConnectionObserver_Internal$CustomProxyConnectionObserverOnTunnelHeadersReceivedParams;->responseHeaders:Lorg/chromium/network/mojom/HttpResponseHeaders;

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
