.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;
.super Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
.source "SourceFile"


# instance fields
.field private final mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

.field private final mContext:Landroid/content/Context;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;",
            "Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;-><init>(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mProfiles:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->createContactListFromAutofillProfiles()V

    return-void
.end method

.method private createAutofillContactFromProfile(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->getRequestPayerName()Z

    move-result v8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->getRequestPayerPhone()Z

    move-result v9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->getRequestPayerEmail()Z

    move-result v10

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    if-eqz v10, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v0

    :goto_2
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    invoke-virtual {v0, v4, v5, v6}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->checkContactCompletionStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method private createContactListFromAutofillProfiles()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mProfiles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->createAutofillContactFromProfile(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->addPayerNameIfValid(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerPhone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->addPhoneNumberIfValid(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->addEmailAddressIfValid(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v3, v2

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    move v5, v2

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->isEqualOrSupersetOf(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, -0x1

    :goto_5
    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->updateItemsWithCollection(ILjava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public addOrUpdateWithAutofillAddress(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->createAutofillContactFromProfile(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
