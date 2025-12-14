.class Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToResponseParams;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendToParams;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendResponseParams;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketSendParams;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$RestrictedUdpSocketReceiveMoreParams;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$Stub;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/RestrictedUdpSocket;",
            "Lorg/chromium/network/mojom/RestrictedUdpSocket$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/RestrictedUdpSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
