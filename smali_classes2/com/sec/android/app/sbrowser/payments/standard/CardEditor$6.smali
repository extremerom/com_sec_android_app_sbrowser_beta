.class Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

.field final synthetic val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

.field final synthetic val$instrument:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

.field final synthetic val$isNewCard:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;ZLcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$isNewCard:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$instrument:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "207"

    const-string v1, "2356"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->f(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->f(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$isNewCard:Z

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->l(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBasicCardIssuerNetwork()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->a(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "basic-card"

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->k(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->n(Ljava/lang/String;Ljava/util/List;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$instrument:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->completeInstrument(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Ljava/lang/String;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;->val$instrument:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
