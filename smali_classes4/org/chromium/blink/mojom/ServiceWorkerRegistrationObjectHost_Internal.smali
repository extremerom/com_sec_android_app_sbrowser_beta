.class Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostSetNavigationPreloadHeaderResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostSetNavigationPreloadHeaderResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostSetNavigationPreloadHeaderResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostSetNavigationPreloadHeaderParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostGetNavigationPreloadStateResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostGetNavigationPreloadStateResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostGetNavigationPreloadStateResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostGetNavigationPreloadStateParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostEnableNavigationPreloadResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostEnableNavigationPreloadResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostEnableNavigationPreloadResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostEnableNavigationPreloadParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUnregisterResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUnregisterResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUnregisterResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUnregisterParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUpdateResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUpdateResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUpdateResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUpdateParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost;",
            "Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
