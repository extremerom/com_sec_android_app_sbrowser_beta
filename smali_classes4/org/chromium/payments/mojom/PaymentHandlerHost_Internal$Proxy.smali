.class final Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/payments/mojom/PaymentHandlerHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal;
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
.method public changePaymentMethod(Lorg/chromium/payments/mojom/PaymentHandlerMethodData;Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangePaymentMethod_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangePaymentMethodParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangePaymentMethodParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangePaymentMethodParams;->methodData:Lorg/chromium/payments/mojom/PaymentHandlerMethodData;

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

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangePaymentMethodResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangePaymentMethodResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangePaymentMethod_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public changeShippingAddress(Lorg/chromium/payments/mojom/PaymentAddress;Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangeShippingAddress_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingAddressParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingAddressParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingAddressParams;->shippingAddress:Lorg/chromium/payments/mojom/PaymentAddress;

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

    new-instance v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingAddressResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingAddressResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangeShippingAddress_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public changeShippingOption(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangeShippingOption_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingOptionParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingOptionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingOptionParams;->shippingOptionId:Ljava/lang/String;

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

    new-instance v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingOptionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingOptionResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangeShippingOption_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
