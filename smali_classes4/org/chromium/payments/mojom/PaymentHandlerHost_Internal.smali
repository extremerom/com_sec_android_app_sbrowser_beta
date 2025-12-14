.class Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingAddressResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingAddressResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingAddressResponseParams;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingAddressParams;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingOptionResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingOptionResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingOptionResponseParams;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangeShippingOptionParams;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangePaymentMethodResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangePaymentMethodResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangePaymentMethodResponseParams;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$PaymentHandlerHostChangePaymentMethodParams;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$Stub;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/PaymentHandlerHost;",
            "Lorg/chromium/payments/mojom/PaymentHandlerHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
