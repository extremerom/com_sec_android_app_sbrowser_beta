.class public interface abstract Lorg/chromium/network/mojom/ProxyResolvingSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/ProxyResolvingSocket$UpgradeToTls_Response;,
        Lorg/chromium/network/mojom/ProxyResolvingSocket$Proxy;
    }
.end annotation


# virtual methods
.method public abstract upgradeToTls(Lorg/chromium/network/mojom/HostPortPair;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/SocketObserver;Lorg/chromium/network/mojom/ProxyResolvingSocket$UpgradeToTls_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/HostPortPair;",
            "Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/TlsClientSocket;",
            ">;",
            "Lorg/chromium/network/mojom/SocketObserver;",
            "Lorg/chromium/network/mojom/ProxyResolvingSocket$UpgradeToTls_Response;",
            ")V"
        }
    .end annotation
.end method
