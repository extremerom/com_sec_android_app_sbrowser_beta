.class Lorg/chromium/payments/mojom/PaymentRequestClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientAllowConnectToSourceResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientAllowConnectToSourceResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientAllowConnectToSourceResponseParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientAllowConnectToSourceParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientWarnNoFaviconParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnHasEnrolledInstrumentParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnCanMakePaymentParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnAbortParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnCompleteParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnErrorParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnPaymentResponseParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnPayerDetailChangeParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnShippingOptionChangeParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnShippingAddressChangeParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$PaymentRequestClientOnPaymentMethodChangeParams;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$Stub;,
        Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/PaymentRequestClient;",
            "Lorg/chromium/payments/mojom/PaymentRequestClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentRequestClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/payments/mojom/PaymentRequestClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
