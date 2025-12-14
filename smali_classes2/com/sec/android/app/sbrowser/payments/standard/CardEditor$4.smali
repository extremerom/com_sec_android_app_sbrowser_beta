.class Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;
.source "SourceFile"


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

.field final synthetic val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

.field final synthetic val$isNewCard:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Ljava/lang/String;ZLcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->val$isNewCard:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isDuplicatedItem()Z
    .locals 5

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->i(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->removeSpaceAndBar(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->val$isNewCard:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v2, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCardsForSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-static {v2, v4, v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->m(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v3
.end method

.method public isModified()Z
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-direct {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-direct {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCard(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->i(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->i(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->removeSpaceAndBar(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->h(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->h(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setName(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->f(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getMonth()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->f(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->f(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getYear()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->f(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->d(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->d(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setBillingAddressId(Ljava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->m(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
