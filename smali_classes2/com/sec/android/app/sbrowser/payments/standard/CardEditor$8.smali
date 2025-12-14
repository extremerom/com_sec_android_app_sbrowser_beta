.class Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->addBillingAddressDropdown(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Runnable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

.field final synthetic val$billingAddresses:Ljava/util/List;

.field final synthetic val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->val$billingAddresses:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->access$000(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateDoneButtonStatus()V

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v1, "add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->g(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->j(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->j(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;->onPaymentRequestServiceBillingAddressChangeProcessed()V

    :cond_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->access$100(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->k(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/List;

    move-result-object v3

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->n(Ljava/lang/String;Ljava/util/List;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->c(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    move-result-object p1

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;Z)V

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->onResult(Landroid/util/Pair;)V

    return-void
.end method
