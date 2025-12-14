.class Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceMakePaymentCredentialResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceMakePaymentCredentialResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceMakePaymentCredentialResponseParams;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceMakePaymentCredentialParams;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialResponseParams;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceStorePaymentCredentialParams;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceIsSecurePaymentConfirmationAvailableResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceIsSecurePaymentConfirmationAvailableResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceIsSecurePaymentConfirmationAvailableResponseParams;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$SecurePaymentConfirmationServiceIsSecurePaymentConfirmationAvailableParams;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$Stub;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/SecurePaymentConfirmationService;",
            "Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/payments/mojom/SecurePaymentConfirmationService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
