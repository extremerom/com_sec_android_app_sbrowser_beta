.class Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostAddRoutesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostAddRoutesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostAddRoutesResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostAddRoutesParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClaimClientsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClaimClientsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClaimClientsResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClaimClientsParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSkipWaitingResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSkipWaitingResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSkipWaitingResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSkipWaitingParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostFocusClientResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostFocusClientResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostFocusClientResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostFocusClientParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostPostMessageToClientParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenPaymentHandlerWindowResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenPaymentHandlerWindowResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenPaymentHandlerWindowResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenPaymentHandlerWindowParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenNewTabResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenNewTabResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenNewTabResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenNewTabParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientsResponseParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientsParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClearCachedMetadataParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSetCachedMetadataParams;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ServiceWorkerHost;",
            "Lorg/chromium/blink/mojom/ServiceWorkerHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
