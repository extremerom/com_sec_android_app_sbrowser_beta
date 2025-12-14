.class Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostOnExecutionReadyParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureFileAccessResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureFileAccessResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureFileAccessResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureFileAccessParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostHintToUpdateServiceWorkerParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostCloneContainerHostParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureControllerServiceWorkerParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationForReadyResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationForReadyResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationForReadyResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationForReadyParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationsResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationsParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;",
            "Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
