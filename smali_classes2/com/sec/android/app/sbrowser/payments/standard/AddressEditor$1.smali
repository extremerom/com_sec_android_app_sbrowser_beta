.class Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

.field final synthetic val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Ljava/lang/String;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private setProfileFieldDataToModel(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->d(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setCountryCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->f(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->c(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getCurrentBestLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLanguageCode(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->b(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->b(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;

    iget v3, v2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->a(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Ljava/util/Map;

    move-result-object v4

    iget v2, v2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->j(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->a(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->j(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public isDuplicatedItem()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->setProfileFieldDataToModel(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getShippingAddressLabelWithCountryForPaymentRequest(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->i(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isModified()Z
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfile(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->setProfileFieldDataToModel(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->i(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
