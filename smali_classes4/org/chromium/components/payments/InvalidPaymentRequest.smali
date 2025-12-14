.class public final Lorg/chromium/components/payments/InvalidPaymentRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/payments/mojom/PaymentRequest;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    return-void
.end method

.method public canMakePayment()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/payments/InvalidPaymentRequest;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onCanMakePayment(I)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public complete(I)V
    .locals 0

    return-void
.end method

.method public hasEnrolledInstrument()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/payments/InvalidPaymentRequest;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onHasEnrolledInstrument(I)V

    :cond_0
    return-void
.end method

.method public init(Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/payments/InvalidPaymentRequest;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method

.method public onPaymentDetailsNotUpdated()V
    .locals 0

    return-void
.end method

.method public retry(Lorg/chromium/payments/mojom/PaymentValidationErrors;)V
    .locals 0

    return-void
.end method

.method public show(ZZ)V
    .locals 1

    iget-object p1, p0, Lorg/chromium/components/payments/InvalidPaymentRequest;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const-string v0, "Web Payments API is disabled."

    invoke-interface {p1, p2, v0}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onError(ILjava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/components/payments/InvalidPaymentRequest;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    invoke-interface {p0}, Lorg/chromium/mojo/bindings/Interface;->close()V

    :cond_0
    return-void
.end method

.method public updateWith(Lorg/chromium/payments/mojom/PaymentDetails;)V
    .locals 0

    return-void
.end method
