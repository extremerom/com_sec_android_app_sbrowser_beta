.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editCard(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
        "Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

.field final synthetic val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->j(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->j(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->addAndSelectItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateAppModifiedTotals()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->j(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;->onResult(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V

    return-void
.end method
