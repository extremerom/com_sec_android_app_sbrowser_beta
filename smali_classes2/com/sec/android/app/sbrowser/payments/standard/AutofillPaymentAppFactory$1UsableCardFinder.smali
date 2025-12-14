.class final Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$1UsableCardFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;


# instance fields
.field private mResult:Z

.field final synthetic val$params:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;


# virtual methods
.method public getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$1UsableCardFinder;->val$params:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    return-object p0
.end method

.method public onPaymentAppCreated(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->setHaveRequestedAutofillData(Z)V

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->strictCanMakePayment()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$1UsableCardFinder;->mResult:Z

    :cond_0
    return-void
.end method
