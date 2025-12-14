.class public Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase<",
        "Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddressErrors:Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mAddressFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressUiComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCountryField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mPhoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPhoneNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSaveToDisk:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneNumbers:Ljava/util/Set;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mSaveToDisk:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    return-object p0
.end method

.method private addAddressTextFieldsToEditor(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    invoke-virtual {v0, p2, p3}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getAddressUiComponents(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressUiComponents:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mCountryField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->getAddressError(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setCustomErrorMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressUiComponents:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressUiComponents:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;

    iget v0, p2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    iget-object v1, p2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setIsFullLine(Z)V

    iget-boolean v1, p2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->isRequired:Z

    if-nez v1, :cond_2

    iget p2, p2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setRequiredErrorMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1409b7

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setRequiredErrorMessage(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressUiComponents:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    return-object p0
.end method

.method private commitChanges(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Z)V
    .locals 4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mCountryField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setCountryCode(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setPhoneNumber(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getCurrentBestLanguageCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLanguageCode(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressUiComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressUiComponents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;

    iget v2, v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->setProfileField(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->setProfileField(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mSaveToDisk:Z

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->setProfile(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setGUID(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setGUID(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mCountryField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->addAddressTextFieldsToEditor(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getAddressError(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressErrors:Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->recipient:Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->organization:Ljava/lang/String;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->addressLine:Ljava/lang/String;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->postalCode:Ljava/lang/String;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->sortingCode:Ljava/lang/String;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->dependentLocality:Ljava/lang/String;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->city:Ljava/lang/String;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->region:Ljava/lang/String;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->country:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPhoneValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$5;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->commitChanges(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Z)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->isContentOfProfileEquals(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z

    move-result p0

    return p0
.end method

.method private isContentOfProfileEquals(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->setProfileField(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V

    return-void
.end method

.method private static setProfileField(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setFullName(Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setCompanyName(Ljava/lang/String;)V

    return-void

    :pswitch_2
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setStreetAddress(Ljava/lang/String;)V

    return-void

    :pswitch_3
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setPostalCode(Ljava/lang/String;)V

    return-void

    :pswitch_4
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setSortingCode(Ljava/lang/String;)V

    return-void

    :pswitch_5
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setDependentLocality(Ljava/lang/String;)V

    return-void

    :pswitch_6
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLocality(Ljava/lang/String;)V

    return-void

    :pswitch_7
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setRegion(Ljava/lang/String;)V

    return-void

    :pswitch_8
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->ensureNotNull(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setCountryCode(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addPhoneNumberIfValid(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->getPhoneValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneNumbers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 16
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-super/range {p0 .. p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->edit(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    invoke-direct {v1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;-><init>()V

    iput-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    iget-object v4, v6, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {v5}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;-><init>()V

    invoke-direct {v2, v4, v5}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    const v8, 0x7f140122

    goto :goto_2

    :cond_3
    const v8, 0x7f14014d

    :goto_2
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v6, v5, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Ljava/lang/String;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mCountryField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    if-nez v5, :cond_4

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v8, 0x7f14018a

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getSupportedCountries()Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createDropdown(Ljava/lang/CharSequence;Ljava/util/List;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v5

    iput-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mCountryField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    :cond_4
    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mCountryField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    new-instance v8, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;

    invoke-direct {v8, v6, v7}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;)V

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setDropdownCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mCountryField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getCountryCode(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mCountryField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v7, v5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v9, 0x5

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v10

    invoke-interface {v5, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x6

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v12

    invoke-interface {v1, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v8

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v5

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfileField(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v1, v5}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->addAddressTextFieldsToEditor(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    if-nez v1, :cond_7

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v5, 0x7f14018d

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneNumbers:Ljava/util/Set;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->getPhoneValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    move-result-object v11

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v5, 0x7f1409b7

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v5, 0x7f1408f0

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x0

    invoke-static/range {v8 .. v15}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(ILjava/lang/CharSequence;Ljava/util/Set;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    :cond_7
    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mPhoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v7, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$3;

    move-object/from16 v5, p2

    invoke-direct {v1, v6, v5, v0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$3;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    invoke-virtual {v7, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->setCancelCallback(Ljava/lang/Runnable;)V

    new-instance v8, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;ZLcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->setDoneCallback(Ljava/lang/Runnable;)V

    const-string v0, "205"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->show(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;)V

    return-void
.end method

.method public setAddressErrors(Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->mAddressErrors:Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;

    return-void
.end method
