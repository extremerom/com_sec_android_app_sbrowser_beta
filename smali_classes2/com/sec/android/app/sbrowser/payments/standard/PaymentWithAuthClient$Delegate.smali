.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract registerBiometrics(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSection(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract wasRetryCalled()Z
.end method
