.class public interface abstract Lorg/chromium/network/mojom/TcpBoundSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TcpBoundSocket$Connect_Response;,
        Lorg/chromium/network/mojom/TcpBoundSocket$Listen_Response;,
        Lorg/chromium/network/mojom/TcpBoundSocket$Proxy;
    }
.end annotation


# virtual methods
.method public abstract connect(Lorg/chromium/network/mojom/AddressList;Lorg/chromium/network/mojom/TcpConnectedSocketOptions;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/SocketObserver;Lorg/chromium/network/mojom/TcpBoundSocket$Connect_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/AddressList;",
            "Lorg/chromium/network/mojom/TcpConnectedSocketOptions;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/TcpConnectedSocket;",
            ">;",
            "Lorg/chromium/network/mojom/SocketObserver;",
            "Lorg/chromium/network/mojom/TcpBoundSocket$Connect_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract listen(ILorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/TcpBoundSocket$Listen_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/TcpServerSocket;",
            ">;",
            "Lorg/chromium/network/mojom/TcpBoundSocket$Listen_Response;",
            ")V"
        }
    .end annotation
.end method
