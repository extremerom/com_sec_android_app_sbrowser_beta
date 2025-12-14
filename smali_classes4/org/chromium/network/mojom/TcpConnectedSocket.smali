.class public interface abstract Lorg/chromium/network/mojom/TcpConnectedSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TcpConnectedSocket$SetKeepAlive_Response;,
        Lorg/chromium/network/mojom/TcpConnectedSocket$SetNoDelay_Response;,
        Lorg/chromium/network/mojom/TcpConnectedSocket$SetReceiveBufferSize_Response;,
        Lorg/chromium/network/mojom/TcpConnectedSocket$SetSendBufferSize_Response;,
        Lorg/chromium/network/mojom/TcpConnectedSocket$UpgradeToTls_Response;,
        Lorg/chromium/network/mojom/TcpConnectedSocket$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/TcpConnectedSocket;",
            "Lorg/chromium/network/mojom/TcpConnectedSocket$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/TcpConnectedSocket;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract setKeepAlive(ZILorg/chromium/network/mojom/TcpConnectedSocket$SetKeepAlive_Response;)V
.end method

.method public abstract setNoDelay(ZLorg/chromium/network/mojom/TcpConnectedSocket$SetNoDelay_Response;)V
.end method

.method public abstract setReceiveBufferSize(ILorg/chromium/network/mojom/TcpConnectedSocket$SetReceiveBufferSize_Response;)V
.end method

.method public abstract setSendBufferSize(ILorg/chromium/network/mojom/TcpConnectedSocket$SetSendBufferSize_Response;)V
.end method

.method public abstract upgradeToTls(Lorg/chromium/network/mojom/HostPortPair;Lorg/chromium/network/mojom/TlsClientSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/SocketObserver;Lorg/chromium/network/mojom/TcpConnectedSocket$UpgradeToTls_Response;)V
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
.end method
