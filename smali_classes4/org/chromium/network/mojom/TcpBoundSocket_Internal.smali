.class Lorg/chromium/network/mojom/TcpBoundSocket_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$TcpBoundSocketConnectResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$TcpBoundSocketConnectResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$TcpBoundSocketConnectResponseParams;,
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$TcpBoundSocketConnectParams;,
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$TcpBoundSocketListenResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$TcpBoundSocketListenResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$TcpBoundSocketListenResponseParams;,
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$TcpBoundSocketListenParams;,
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$Stub;,
        Lorg/chromium/network/mojom/TcpBoundSocket_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/TcpBoundSocket;",
            "Lorg/chromium/network/mojom/TcpBoundSocket$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/TcpBoundSocket_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TcpBoundSocket_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/TcpBoundSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
