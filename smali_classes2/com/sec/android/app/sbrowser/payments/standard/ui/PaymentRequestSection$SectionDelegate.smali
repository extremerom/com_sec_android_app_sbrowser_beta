.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SectionDelegate"
.end annotation


# virtual methods
.method public abstract getAdditionalText(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract isAcceptingUserInput()Z
.end method

.method public abstract isAdditionalTextDisplayingWarning(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)Z
.end method

.method public abstract onAddPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V
.end method

.method public abstract onEditPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
.end method

.method public abstract onPaymentOptionChanged(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
.end method

.method public abstract onSectionClicked(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V
.end method
