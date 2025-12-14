.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;
.end method

.method public onCanMakePaymentCalculated(Z)V
    .locals 0

    return-void
.end method

.method public onDoneCreatingPaymentApps(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V
    .locals 0

    return-void
.end method

.method public abstract onPaymentAppCreated(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V
.end method

.method public onPaymentAppCreationError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
