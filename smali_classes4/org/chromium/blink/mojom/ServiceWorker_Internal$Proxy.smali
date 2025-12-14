.class final Lorg/chromium/blink/mojom/ServiceWorker_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ServiceWorker$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ServiceWorker_Internal;
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
.method public addKeepAlive()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerAddKeepAliveParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerAddKeepAliveParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public addMessageToConsole(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerAddMessageToConsoleParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerAddMessageToConsoleParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerAddMessageToConsoleParams;->level:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerAddMessageToConsoleParams;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x18

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public clearKeepAlive()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerClearKeepAliveParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerClearKeepAliveParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public dispatchAbortPaymentEvent(Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;Lorg/chromium/blink/mojom/ServiceWorker$DispatchAbortPaymentEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchAbortPaymentEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchAbortPaymentEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchAbortPaymentEventParams;->resultOfAbortPayment:Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0xf

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchAbortPaymentEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchAbortPaymentEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchAbortPaymentEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchActivateEvent(Lorg/chromium/blink/mojom/ServiceWorker$DispatchActivateEvent_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchActivateEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchActivateEventParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchActivateEventResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchActivateEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchActivateEvent_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchBackgroundFetchAbortEvent(Lorg/chromium/blink/mojom/BackgroundFetchRegistration;Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchAbortEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchAbortEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchAbortEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchAbortEventParams;->registration:Lorg/chromium/blink/mojom/BackgroundFetchRegistration;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchAbortEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchAbortEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchAbortEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchBackgroundFetchClickEvent(Lorg/chromium/blink/mojom/BackgroundFetchRegistration;Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchClickEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchClickEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchClickEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchClickEventParams;->registration:Lorg/chromium/blink/mojom/BackgroundFetchRegistration;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchClickEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchClickEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchClickEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchBackgroundFetchFailEvent(Lorg/chromium/blink/mojom/BackgroundFetchRegistration;Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchFailEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchFailEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchFailEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchFailEventParams;->registration:Lorg/chromium/blink/mojom/BackgroundFetchRegistration;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchFailEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchFailEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchFailEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchBackgroundFetchSuccessEvent(Lorg/chromium/blink/mojom/BackgroundFetchRegistration;Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchSuccessEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchSuccessEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchSuccessEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchSuccessEventParams;->registration:Lorg/chromium/blink/mojom/BackgroundFetchRegistration;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchSuccessEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchBackgroundFetchSuccessEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchSuccessEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchCanMakePaymentEvent(Lorg/chromium/payments/mojom/CanMakePaymentEventData;Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;Lorg/chromium/blink/mojom/ServiceWorker$DispatchCanMakePaymentEvent_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCanMakePaymentEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCanMakePaymentEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCanMakePaymentEventParams;->eventData:Lorg/chromium/payments/mojom/CanMakePaymentEventData;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCanMakePaymentEventParams;->resultOfCanMakePayment:Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;

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

    const/16 v4, 0x10

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCanMakePaymentEventResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCanMakePaymentEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchCanMakePaymentEvent_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchContentDeleteEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorker$DispatchContentDeleteEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchContentDeleteEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchContentDeleteEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchContentDeleteEventParams;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0x13

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchContentDeleteEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchContentDeleteEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchContentDeleteEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchCookieChangeEvent(Lorg/chromium/network/mojom/CookieChangeInfo;Lorg/chromium/blink/mojom/ServiceWorker$DispatchCookieChangeEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCookieChangeEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCookieChangeEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCookieChangeEventParams;->change:Lorg/chromium/network/mojom/CookieChangeInfo;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x7

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCookieChangeEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchCookieChangeEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchCookieChangeEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchExtendableMessageEvent(Lorg/chromium/blink/mojom/ExtendableMessageEvent;Lorg/chromium/blink/mojom/ServiceWorker$DispatchExtendableMessageEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchExtendableMessageEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchExtendableMessageEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchExtendableMessageEventParams;->event:Lorg/chromium/blink/mojom/ExtendableMessageEvent;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0x12

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchExtendableMessageEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchExtendableMessageEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchExtendableMessageEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchFetchEventForMainResource(Lorg/chromium/blink/mojom/DispatchFetchEventParams;Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback;Lorg/chromium/blink/mojom/ServiceWorker$DispatchFetchEventForMainResource_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchFetchEventForMainResourceParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchFetchEventForMainResourceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchFetchEventForMainResourceParams;->params:Lorg/chromium/blink/mojom/DispatchFetchEventParams;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchFetchEventForMainResourceParams;->responseCallback:Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback;

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

    const/16 v4, 0x8

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchFetchEventForMainResourceResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchFetchEventForMainResourceResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchFetchEventForMainResource_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchInstallEvent(Lorg/chromium/blink/mojom/ServiceWorker$DispatchInstallEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchInstallEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchInstallEventParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchInstallEventResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchInstallEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchInstallEvent_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchNotificationClickEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/NotificationData;ILorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/ServiceWorker$DispatchNotificationClickEvent_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationClickEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationClickEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationClickEventParams;->notificationId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationClickEventParams;->notificationData:Lorg/chromium/blink/mojom/NotificationData;

    iput p3, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationClickEventParams;->actionIndex:I

    iput-object p4, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationClickEventParams;->reply:Lorg/chromium/mojo_base/mojom/String16;

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

    const-wide/16 v1, 0x0

    const/16 p4, 0x9

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationClickEventResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationClickEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchNotificationClickEvent_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchNotificationCloseEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/NotificationData;Lorg/chromium/blink/mojom/ServiceWorker$DispatchNotificationCloseEvent_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationCloseEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationCloseEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationCloseEventParams;->notificationId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationCloseEventParams;->notificationData:Lorg/chromium/blink/mojom/NotificationData;

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

    const/16 v4, 0xa

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationCloseEventResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchNotificationCloseEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchNotificationCloseEvent_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchPaymentRequestEvent(Lorg/chromium/payments/mojom/PaymentRequestEventData;Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;Lorg/chromium/blink/mojom/ServiceWorker$DispatchPaymentRequestEvent_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPaymentRequestEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPaymentRequestEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPaymentRequestEventParams;->requestData:Lorg/chromium/payments/mojom/PaymentRequestEventData;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPaymentRequestEventParams;->responseCallback:Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;

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

    const/16 v4, 0x11

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPaymentRequestEventResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPaymentRequestEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchPaymentRequestEvent_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchPeriodicSyncEvent(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/blink/mojom/ServiceWorker$DispatchPeriodicSyncEvent_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPeriodicSyncEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPeriodicSyncEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPeriodicSyncEventParams;->tag:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPeriodicSyncEventParams;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

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

    const/16 v4, 0xe

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPeriodicSyncEventResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPeriodicSyncEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchPeriodicSyncEvent_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchPushEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorker$DispatchPushEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushEventParams;->payload:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0xb

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchPushEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchPushSubscriptionChangeEvent(Lorg/chromium/blink/mojom/PushSubscription;Lorg/chromium/blink/mojom/PushSubscription;Lorg/chromium/blink/mojom/ServiceWorker$DispatchPushSubscriptionChangeEvent_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushSubscriptionChangeEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushSubscriptionChangeEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushSubscriptionChangeEventParams;->oldSubscription:Lorg/chromium/blink/mojom/PushSubscription;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushSubscriptionChangeEventParams;->newSubscription:Lorg/chromium/blink/mojom/PushSubscription;

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

    const/16 v4, 0xc

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushSubscriptionChangeEventResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchPushSubscriptionChangeEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchPushSubscriptionChangeEvent_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchSyncEvent(Ljava/lang/String;ZLorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/blink/mojom/ServiceWorker$DispatchSyncEvent_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchSyncEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchSyncEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchSyncEventParams;->tag:Ljava/lang/String;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchSyncEventParams;->lastChance:Z

    iput-object p3, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchSyncEventParams;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

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

    const-wide/16 v1, 0x0

    const/16 v3, 0xd

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchSyncEventResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerDispatchSyncEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$DispatchSyncEvent_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public executeScriptForTest(Lorg/chromium/mojo_base/mojom/BigString16;ZLorg/chromium/blink/mojom/ServiceWorker$ExecuteScriptForTest_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerExecuteScriptForTestParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerExecuteScriptForTestParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerExecuteScriptForTestParams;->javascript:Lorg/chromium/mojo_base/mojom/BigString16;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerExecuteScriptForTestParams;->wantsResult:Z

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

    const/16 v4, 0x19

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerExecuteScriptForTestResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerExecuteScriptForTestResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$ExecuteScriptForTest_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public initializeGlobalScope(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectInfo;Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;IILorg/chromium/blink/mojom/StorageKey;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->serviceWorkerHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->associatedInterfacesToBrowser:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->associatedInterfacesFromBrowser:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->registrationInfo:Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectInfo;

    iput-object p5, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->serviceWorkerInfo:Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

    iput p6, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->fetchHandlerExistence:I

    iput p7, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->ancestorFrameType:I

    iput-object p8, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->storageKey:Lorg/chromium/blink/mojom/StorageKey;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public ping(Lorg/chromium/blink/mojom/ServiceWorker$Ping_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerPingParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerPingParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0x14

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerPingResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerPingResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorker$Ping_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setIdleDelay(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerSetIdleDelayParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerSetIdleDelayParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerSetIdleDelayParams;->delay:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
