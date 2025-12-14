.class Lorg/chromium/network/mojom/SocketBroker_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SocketBroker_Internal$SocketBrokerCreateUdpSocketResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SocketBroker_Internal$SocketBrokerCreateUdpSocketResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SocketBroker_Internal$SocketBrokerCreateUdpSocketResponseParams;,
        Lorg/chromium/network/mojom/SocketBroker_Internal$SocketBrokerCreateUdpSocketParams;,
        Lorg/chromium/network/mojom/SocketBroker_Internal$SocketBrokerCreateTcpSocketResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SocketBroker_Internal$SocketBrokerCreateTcpSocketResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SocketBroker_Internal$SocketBrokerCreateTcpSocketResponseParams;,
        Lorg/chromium/network/mojom/SocketBroker_Internal$SocketBrokerCreateTcpSocketParams;,
        Lorg/chromium/network/mojom/SocketBroker_Internal$Stub;,
        Lorg/chromium/network/mojom/SocketBroker_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/SocketBroker;",
            "Lorg/chromium/network/mojom/SocketBroker$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/SocketBroker_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SocketBroker_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/SocketBroker_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
