.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;ZZLjava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
        "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->r(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->getShoppingCart()Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateOrderSummarySection(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->d(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowShippingSection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->getShippingAddresses()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->getShippingOptions()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->d(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowContactSection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->getContactDetails()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->getPaymentMethods()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->p(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->p(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->o(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->x(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->x(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->A(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->z(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;->onResult(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;)V

    return-void
.end method
