.class Lorg/chromium/network/mojom/TcpConnectedSocket_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveResponseParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetKeepAliveParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetNoDelayResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetNoDelayResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetNoDelayResponseParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetNoDelayParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetReceiveBufferSizeResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetReceiveBufferSizeResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetReceiveBufferSizeResponseParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetReceiveBufferSizeParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetSendBufferSizeResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetSendBufferSizeResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetSendBufferSizeResponseParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketSetSendBufferSizeParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsResponseParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$TcpConnectedSocketUpgradeToTlsParams;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$Stub;,
        Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$Proxy;
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

    new-instance v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/TcpConnectedSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
