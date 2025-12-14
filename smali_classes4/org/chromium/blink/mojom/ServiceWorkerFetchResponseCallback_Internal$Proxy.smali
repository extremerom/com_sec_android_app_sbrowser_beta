.class final Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal;
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
.method public onFallback(Lorg/chromium/network/mojom/DataElementChunkedDataPipe;Lorg/chromium/blink/mojom/ServiceWorkerFetchEventTiming;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnFallbackParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnFallbackParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnFallbackParams;->requestBody:Lorg/chromium/network/mojom/DataElementChunkedDataPipe;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnFallbackParams;->timing:Lorg/chromium/blink/mojom/ServiceWorkerFetchEventTiming;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onResponse(Lorg/chromium/blink/mojom/FetchApiResponse;Lorg/chromium/blink/mojom/ServiceWorkerFetchEventTiming;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnResponseParams;->response:Lorg/chromium/blink/mojom/FetchApiResponse;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnResponseParams;->timing:Lorg/chromium/blink/mojom/ServiceWorkerFetchEventTiming;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onResponseStream(Lorg/chromium/blink/mojom/FetchApiResponse;Lorg/chromium/blink/mojom/ServiceWorkerStreamHandle;Lorg/chromium/blink/mojom/ServiceWorkerFetchEventTiming;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnResponseStreamParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnResponseStreamParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnResponseStreamParams;->response:Lorg/chromium/blink/mojom/FetchApiResponse;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnResponseStreamParams;->bodyAsStream:Lorg/chromium/blink/mojom/ServiceWorkerStreamHandle;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal$ServiceWorkerFetchResponseCallbackOnResponseStreamParams;->timing:Lorg/chromium/blink/mojom/ServiceWorkerFetchEventTiming;

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
