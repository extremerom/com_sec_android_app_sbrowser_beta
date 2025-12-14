.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract dismissOnLauncherActivityIntent()V
.end method

.method public abstract dispatchPayerDetailChangeEventIfNeeded(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)V
.end method

.method public abstract startShippingAddressChangeNormalization(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
.end method

.method public abstract wasRetryCalled()Z
.end method
