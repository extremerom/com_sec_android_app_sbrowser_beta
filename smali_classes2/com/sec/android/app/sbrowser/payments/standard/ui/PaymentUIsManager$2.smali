.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editAddress(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
        "Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

.field final synthetic val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->d(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->setAddressErrors(Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->setShippingAddressLabelWithCountry()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->updateBillingAddressIfComplete(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->providePaymentInformationToPaymentRequestUI()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->addAndSelectItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->addOrUpdateWithAutofillAddress(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->h(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;->startShippingAddressChangeNormalization(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->providePaymentInformationToPaymentRequestUI()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->l(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->i(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->l(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;->onResult(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    return-void
.end method
