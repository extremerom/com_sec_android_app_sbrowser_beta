.class final Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/ProxyResolvingSocketFactory$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal;
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
.method public createProxyResolvingSocket(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ProxyResolvingSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/SocketObserver;Lorg/chromium/network/mojom/ProxyResolvingSocketFactory$CreateProxyResolvingSocket_Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/mojom/Url;",
            "Lorg/chromium/network/mojom/NetworkAnonymizationKey;",
            "Lorg/chromium/network/mojom/ProxyResolvingSocketOptions;",
            "Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/ProxyResolvingSocket;",
            ">;",
            "Lorg/chromium/network/mojom/SocketObserver;",
            "Lorg/chromium/network/mojom/ProxyResolvingSocketFactory$CreateProxyResolvingSocket_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p3, v0, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketParams;->options:Lorg/chromium/network/mojom/ProxyResolvingSocketOptions;

    iput-object p4, v0, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iput-object p5, v0, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p6, v0, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketParams;->observer:Lorg/chromium/network/mojom/SocketObserver;

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

    const/4 p6, 0x0

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/network/mojom/ProxyResolvingSocketFactory_Internal$ProxyResolvingSocketFactoryCreateProxyResolvingSocketResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/ProxyResolvingSocketFactory$CreateProxyResolvingSocket_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
