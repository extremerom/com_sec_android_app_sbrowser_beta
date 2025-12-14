.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editContactOnPaymentRequestUI(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
        "Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

.field final synthetic val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->f(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->setPayerErrors(Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->addAndSelectItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->h(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->toPayerDetail()Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;->dispatchPayerDetailChangeEventIfNeeded(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->l(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->i(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->l(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;->onResult(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V

    return-void
.end method
