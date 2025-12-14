.class final Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ControllerServiceWorker$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public clone(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;Lorg/chromium/network/mojom/DocumentIsolationPolicy;Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ControllerServiceWorker;",
            ">;",
            "Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;",
            "Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;",
            "Lorg/chromium/network/mojom/DocumentIsolationPolicy;",
            "Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerCloneParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerCloneParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerCloneParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerCloneParams;->crossOriginEmbedderPolicy:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerCloneParams;->coepReporter:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerCloneParams;->documentIsolationPolicy:Lorg/chromium/network/mojom/DocumentIsolationPolicy;

    iput-object p5, v0, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerCloneParams;->dipReporter:Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public dispatchFetchEventForSubresource(Lorg/chromium/blink/mojom/DispatchFetchEventParams;Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback;Lorg/chromium/blink/mojom/ControllerServiceWorker$DispatchFetchEventForSubresource_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerDispatchFetchEventForSubresourceParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerDispatchFetchEventForSubresourceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerDispatchFetchEventForSubresourceParams;->params:Lorg/chromium/blink/mojom/DispatchFetchEventParams;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerDispatchFetchEventForSubresourceParams;->responseCallback:Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerDispatchFetchEventForSubresourceResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/ControllerServiceWorker_Internal$ControllerServiceWorkerDispatchFetchEventForSubresourceResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ControllerServiceWorker$DispatchFetchEventForSubresource_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
