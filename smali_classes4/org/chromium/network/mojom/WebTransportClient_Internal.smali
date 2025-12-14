.class Lorg/chromium/network/mojom/WebTransportClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebTransportClient_Internal$WebTransportClientOnClosedParams;,
        Lorg/chromium/network/mojom/WebTransportClient_Internal$WebTransportClientOnReceivedResetStreamParams;,
        Lorg/chromium/network/mojom/WebTransportClient_Internal$WebTransportClientOnReceivedStopSendingParams;,
        Lorg/chromium/network/mojom/WebTransportClient_Internal$WebTransportClientOnOutgoingStreamClosedParams;,
        Lorg/chromium/network/mojom/WebTransportClient_Internal$WebTransportClientOnIncomingStreamClosedParams;,
        Lorg/chromium/network/mojom/WebTransportClient_Internal$WebTransportClientOnDatagramReceivedParams;,
        Lorg/chromium/network/mojom/WebTransportClient_Internal$Stub;,
        Lorg/chromium/network/mojom/WebTransportClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/WebTransportClient;",
            "Lorg/chromium/network/mojom/WebTransportClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/WebTransportClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/WebTransportClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/WebTransportClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
