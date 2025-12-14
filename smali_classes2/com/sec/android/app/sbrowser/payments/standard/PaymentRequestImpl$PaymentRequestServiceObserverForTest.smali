.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaymentRequestServiceObserverForTest"
.end annotation


# virtual methods
.method public abstract onPaymentRequestServiceBillingAddressChangeProcessed()V
.end method

.method public abstract onPaymentRequestServiceCanMakePaymentQueryResponded()V
.end method

.method public abstract onPaymentRequestServiceHasEnrolledInstrumentQueryResponded()V
.end method

.method public abstract onPaymentRequestServiceShowFailed()V
.end method

.method public abstract onPaymentRequestServiceUnableToAbort()V
.end method

.method public abstract onPaymentResponseReady()V
.end method
