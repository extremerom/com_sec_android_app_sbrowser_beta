.class final Lorg/chromium/payments/mojom/PaymentManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/payments/mojom/PaymentManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/payments/mojom/PaymentManager_Internal;
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
.method public clearPaymentInstruments(Lorg/chromium/payments/mojom/PaymentManager$ClearPaymentInstruments_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerClearPaymentInstrumentsParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerClearPaymentInstrumentsParams;-><init>()V

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

    const/4 v6, 0x6

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerClearPaymentInstrumentsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerClearPaymentInstrumentsResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentManager$ClearPaymentInstruments_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public deletePaymentInstrument(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentManager$DeletePaymentInstrument_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerDeletePaymentInstrumentParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerDeletePaymentInstrumentParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerDeletePaymentInstrumentParams;->instrumentKey:Ljava/lang/String;

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

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerDeletePaymentInstrumentResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerDeletePaymentInstrumentResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentManager$DeletePaymentInstrument_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public enableDelegations([ILorg/chromium/payments/mojom/PaymentManager$EnableDelegations_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerEnableDelegationsParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerEnableDelegationsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerEnableDelegationsParams;->delegations:[I

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

    const/16 v5, 0x8

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerEnableDelegationsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerEnableDelegationsResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentManager$EnableDelegations_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getPaymentInstrument(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentManager$GetPaymentInstrument_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerGetPaymentInstrumentParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerGetPaymentInstrumentParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerGetPaymentInstrumentParams;->instrumentKey:Ljava/lang/String;

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

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerGetPaymentInstrumentResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerGetPaymentInstrumentResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentManager$GetPaymentInstrument_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public hasPaymentInstrument(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentManager$HasPaymentInstrument_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerHasPaymentInstrumentParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerHasPaymentInstrumentParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerHasPaymentInstrumentParams;->instrumentKey:Ljava/lang/String;

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

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerHasPaymentInstrumentResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerHasPaymentInstrumentResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentManager$HasPaymentInstrument_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public init(Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerInitParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerInitParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerInitParams;->contextUrl:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerInitParams;->serviceWorkerScope:Ljava/lang/String;

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

.method public keysOfPaymentInstruments(Lorg/chromium/payments/mojom/PaymentManager$KeysOfPaymentInstruments_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerKeysOfPaymentInstrumentsParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerKeysOfPaymentInstrumentsParams;-><init>()V

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

    const/4 v6, 0x3

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerKeysOfPaymentInstrumentsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerKeysOfPaymentInstrumentsResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentManager$KeysOfPaymentInstruments_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setPaymentInstrument(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentInstrument;Lorg/chromium/payments/mojom/PaymentManager$SetPaymentInstrument_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentParams;->instrumentKey:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentParams;->instrument:Lorg/chromium/payments/mojom/PaymentInstrument;

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

    const/4 v4, 0x5

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentManager$SetPaymentInstrument_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setUserHint(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetUserHintParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetUserHintParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetUserHintParams;->userHint:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
