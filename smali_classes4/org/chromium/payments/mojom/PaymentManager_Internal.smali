.class Lorg/chromium/payments/mojom/PaymentManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerEnableDelegationsResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerEnableDelegationsResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerEnableDelegationsResponseParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerEnableDelegationsParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetUserHintParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerClearPaymentInstrumentsResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerClearPaymentInstrumentsResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerClearPaymentInstrumentsResponseParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerClearPaymentInstrumentsParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentResponseParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerSetPaymentInstrumentParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerHasPaymentInstrumentResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerHasPaymentInstrumentResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerHasPaymentInstrumentResponseParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerHasPaymentInstrumentParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerKeysOfPaymentInstrumentsResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerKeysOfPaymentInstrumentsResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerKeysOfPaymentInstrumentsResponseParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerKeysOfPaymentInstrumentsParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerGetPaymentInstrumentResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerGetPaymentInstrumentResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerGetPaymentInstrumentResponseParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerGetPaymentInstrumentParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerDeletePaymentInstrumentResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerDeletePaymentInstrumentResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerDeletePaymentInstrumentResponseParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerDeletePaymentInstrumentParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$PaymentManagerInitParams;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$Stub;,
        Lorg/chromium/payments/mojom/PaymentManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/PaymentManager;",
            "Lorg/chromium/payments/mojom/PaymentManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/payments/mojom/PaymentManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/payments/mojom/PaymentManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
