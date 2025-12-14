.class public interface abstract Lorg/chromium/network/mojom/ProxyResolvingSocketFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/ProxyResolvingSocketFactory$CreateProxyResolvingSocket_Response;,
        Lorg/chromium/network/mojom/ProxyResolvingSocketFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createProxyResolvingSocket(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ProxyResolvingSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/SocketObserver;Lorg/chromium/network/mojom/ProxyResolvingSocketFactory$CreateProxyResolvingSocket_Response;)V
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
.end method
