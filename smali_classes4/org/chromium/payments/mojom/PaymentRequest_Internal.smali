.class Lorg/chromium/payments/mojom/PaymentRequest_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$PaymentRequestHasEnrolledInstrumentParams;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$PaymentRequestCanMakePaymentParams;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$PaymentRequestRetryParams;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$PaymentRequestCompleteParams;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$PaymentRequestAbortParams;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$PaymentRequestOnPaymentDetailsNotUpdatedParams;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$PaymentRequestUpdateWithParams;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$PaymentRequestShowParams;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$PaymentRequestInitParams;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$Stub;,
        Lorg/chromium/payments/mojom/PaymentRequest_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/PaymentRequest;",
            "Lorg/chromium/payments/mojom/PaymentRequest$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/payments/mojom/PaymentRequest_Internal$1;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentRequest_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/payments/mojom/PaymentRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
