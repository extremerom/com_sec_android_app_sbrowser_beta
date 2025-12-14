.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Client"
.end annotation


# virtual methods
.method public abstract getDefaultPaymentInformation(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSectionInformation(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getShoppingCart(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCardAndAddressSettingsClicked()V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onPayClicked(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)Z
.end method

.method public abstract onSectionAddOption(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract onSectionEditOption(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract onSectionOptionSelected(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract shouldShowContactSection()Z
.end method

.method public abstract shouldShowShippingSection()Z
.end method
