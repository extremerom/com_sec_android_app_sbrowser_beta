.class Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->onResult(Landroid/util/Pair;)V
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
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

.field final synthetic val$isSelectingIncompleteAddress:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->val$isSelectingIncompleteAddress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->setBillingAddressLabel()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->val$isSelectingIncompleteAddress:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->g(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->val$billingAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->val$billingAddresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->val$billingAddresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->k(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->val$billingAddresses:Ljava/util/List;

    new-instance v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getSublabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->d(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->val$billingAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setDropdownKeyValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->d(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->d(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getDropdownKeys()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->d(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->val$card:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->d(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->access$200(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateBillingAddressDropBox()V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8$1;->onResult(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    return-void
.end method
