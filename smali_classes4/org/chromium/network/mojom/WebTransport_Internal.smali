.class Lorg/chromium/network/mojom/WebTransport_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportCloseParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportGetStatsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportGetStatsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportGetStatsResponseParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportGetStatsParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportSetOutgoingDatagramExpirationDurationParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportStopSendingParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportAbortStreamParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportSendFinParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportAcceptUnidirectionalStreamResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportAcceptUnidirectionalStreamResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportAcceptUnidirectionalStreamResponseParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportAcceptUnidirectionalStreamParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportAcceptBidirectionalStreamResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportAcceptBidirectionalStreamResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportAcceptBidirectionalStreamResponseParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportAcceptBidirectionalStreamParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportCreateStreamResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportCreateStreamResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportCreateStreamResponseParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportCreateStreamParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportSendDatagramResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportSendDatagramResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportSendDatagramResponseParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$WebTransportSendDatagramParams;,
        Lorg/chromium/network/mojom/WebTransport_Internal$Stub;,
        Lorg/chromium/network/mojom/WebTransport_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/WebTransport;",
            "Lorg/chromium/network/mojom/WebTransport$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/WebTransport_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/WebTransport_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/WebTransport_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
