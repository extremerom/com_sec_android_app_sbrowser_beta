.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->createUiClient(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerBiometrics(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentInformationCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->registerBioAuth(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method public updateSection(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentInformationCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->providePaymentInformationToPaymentRequestUI()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->l(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->i(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->l(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->j(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateAppModifiedTotals()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public wasRetryCalled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->h(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;->wasRetryCalled()Z

    move-result p0

    return p0
.end method
