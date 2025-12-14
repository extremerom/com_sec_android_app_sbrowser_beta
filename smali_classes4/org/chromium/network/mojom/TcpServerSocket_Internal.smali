.class Lorg/chromium/network/mojom/TcpServerSocket_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;,
        Lorg/chromium/network/mojom/TcpServerSocket_Internal$TcpServerSocketAcceptParams;,
        Lorg/chromium/network/mojom/TcpServerSocket_Internal$Stub;,
        Lorg/chromium/network/mojom/TcpServerSocket_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/TcpServerSocket;",
            "Lorg/chromium/network/mojom/TcpServerSocket$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/TcpServerSocket_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TcpServerSocket_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/TcpServerSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
