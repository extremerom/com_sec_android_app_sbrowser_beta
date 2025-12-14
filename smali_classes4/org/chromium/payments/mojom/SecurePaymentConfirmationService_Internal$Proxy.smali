.class final Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal;
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
.method public isSecurePaymentConfirmationAvailable(Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$IsSecurePaymentConfirmationAvailable_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceIsSecurePaymentConfirmationAvailableParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceIsSecurePaymentConfirmationAvailableParams;-><init>()V

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

    const/4 v6, 0x0

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceIsSecurePaymentConfirmationAvailableResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceIsSecurePaymentConfirmationAvailableResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$IsSecurePaymentConfirmationAvailable_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public makePaymentCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$MakePaymentCredential_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceMakePaymentCredentialParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceMakePaymentCredentialParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceMakePaymentCredentialParams;->options:Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

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

    new-instance v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceMakePaymentCredentialResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceMakePaymentCredentialResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$MakePaymentCredential_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public storePaymentCredential([BLjava/lang/String;[BLorg/chromium/payments/mojom/SecurePaymentConfirmationService$StorePaymentCredential_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialParams;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialParams;->credentialId:[B

    iput-object p2, v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialParams;->rpId:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialParams;->userId:[B

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

    invoke-direct {p2, p3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialResponseParamsForwardToCallback;-><init>(Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$StorePaymentCredential_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
