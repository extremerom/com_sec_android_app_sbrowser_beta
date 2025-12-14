.class Lorg/chromium/blink/mojom/PresentationService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceTerminateParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceCloseConnectionParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceReconnectPresentationResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceReconnectPresentationResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceReconnectPresentationResponseParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceReconnectPresentationParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceStartPresentationResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceStartPresentationResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceStartPresentationResponseParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceStartPresentationParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceStopListeningForScreenAvailabilityParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceListenForScreenAvailabilityParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceSetDefaultPresentationUrlsParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceSetReceiverParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$PresentationServiceSetControllerParams;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$Stub;,
        Lorg/chromium/blink/mojom/PresentationService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/PresentationService;",
            "Lorg/chromium/blink/mojom/PresentationService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PresentationService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PresentationService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/PresentationService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
