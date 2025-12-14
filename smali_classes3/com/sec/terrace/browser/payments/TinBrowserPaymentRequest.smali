.class public interface abstract Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;
    }
.end annotation


# virtual methods
.method public abstract abort()V
.end method

.method public abstract canMakePayment()V
.end method

.method public abstract close()V
.end method

.method public abstract complete(I)V
.end method

.method public abstract disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V
.end method

.method public abstract hasEnrolledInstrument()V
.end method

.method public abstract initAndValidate([Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;)Z
.end method

.method public abstract onPaymentDetailsNotUpdated()V
.end method

.method public abstract retry(Lorg/chromium/payments/mojom/PaymentValidationErrors;)V
.end method

.method public abstract show(Z)V
.end method

.method public abstract updateWith(Lorg/chromium/payments/mojom/PaymentDetails;)V
.end method
