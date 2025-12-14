.class Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAddRegistrationObserverParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsResponseParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAbortResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAbortResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAbortResponseParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAbortParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiResponseParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiParams;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$Stub;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService;",
            "Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
