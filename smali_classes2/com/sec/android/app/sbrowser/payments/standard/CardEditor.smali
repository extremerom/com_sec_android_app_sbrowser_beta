.class public Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase<",
        "Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAcceptedBasicCardIssuerNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAcceptedCardIssuerNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mAcceptedIssuerNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAddressEditor:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

.field private final mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

.field private mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCardIconGenerator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;

.field private final mCardIssuerNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mCardNumberValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

.field private mEditorExpiryDate:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIconHint:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mIncompleteProfilesForBillingAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsIncognito:Z

.field private mNameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNumberField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mProfilesForBillingAddress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveCardCheckbox:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;ZLcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;Z)V
    .locals 1
    .param p4    # Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mTerrace:Lcom/sec/terrace/Terrace;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAddressEditor:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getBillingAddressesToSuggest(Z)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIncompleteProfilesForBillingAddress:Ljava/util/Map;

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {p3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getIsLocal()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x1

    invoke-static {p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->checkAddressCompletionStatus(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)I

    move-result p4

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getEditMessageAndTitleResIds(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIncompleteProfilesForBillingAddress:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mCardIssuerNetworks:Ljava/util/Map;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    const p3, 0x7f080077

    const p4, 0x7f140116

    invoke-direct {p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;-><init>(II)V

    const-string p3, "amex"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    const p3, 0x7f080160

    const p4, 0x7f140117

    invoke-direct {p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;-><init>(II)V

    const-string p3, "diners"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    const p3, 0x7f080162

    const p4, 0x7f140118

    invoke-direct {p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;-><init>(II)V

    const-string p3, "discover"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    const p3, 0x7f0803a2

    const p4, 0x7f140119

    invoke-direct {p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;-><init>(II)V

    const-string p3, "jcb"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    const p3, 0x7f0803dd

    const p4, 0x7f14011a

    invoke-direct {p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;-><init>(II)V

    const-string p3, "mastercard"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    const p3, 0x7f08042e

    const p4, 0x7f14011b

    invoke-direct {p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;-><init>(II)V

    const-string p3, "mir"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    const p3, 0x7f0807ce

    const p4, 0x7f14011c

    invoke-direct {p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;-><init>(II)V

    const-string p3, "unionpay"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    const p3, 0x7f0807d8

    const p4, 0x7f14011d

    invoke-direct {p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;-><init>(II)V

    const-string p3, "visa"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedIssuerNetworks:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedBasicCardIssuerNetworks:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedCardIssuerNetworks:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mCardNumberValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$3;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$3;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mCardIconGenerator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIsIncognito:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedBasicCardIssuerNetworks:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    return-object p0
.end method

.method private addAcceptedNetwork(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedIssuerNetworks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedIssuerNetworks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedCardIssuerNetworks:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mCardIssuerNetworks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addBillingAddressDropdown(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v3, 0x7f140135

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIncompleteProfilesForBillingAddress:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v6, 0x7f1400fa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIncompleteProfilesForBillingAddress:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v8, 0x7f060205

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v6, v5, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xe

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v4, v6, v5, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    new-instance v3, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v4, 0x7f140122

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "add"

    invoke-direct {v1, v3, v2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v2, 0x7f14012a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createDropdown(Ljava/lang/CharSequence;Ljava/util/List;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v3, 0x7f1409b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setRequiredErrorMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;

    invoke-direct {v2, p0, p2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$8;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setDropdownCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getDropdownKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    return-void
.end method

.method private addLocalCardInputs(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIconHint:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedCardIssuerNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedCardIssuerNetworks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    iget v3, v3, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;->icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedCardIssuerNetworks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    iget v3, v3, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;->description:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v3, 0x7f1408bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createIconList(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIconHint:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIconHint:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNumberField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    const v1, 0x7f1409b7

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v2, 0x7f14012d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mCardNumberValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mCardIconGenerator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v2, 0x7f1408d1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v3, 0x7

    const/4 v5, 0x0

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(ILjava/lang/CharSequence;Ljava/util/Set;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNumberField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNumberField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNumberField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v2, 0x7f140133

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(ILjava/lang/CharSequence;Ljava/util/Set;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v1, 0x7f14012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createExpiryDate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mEditorExpiryDate:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedIssuerNetworks:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAddressEditor:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    return-object p0
.end method

.method private commitChanges(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setBillingAddressId(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIsLocal()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNumberField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->removeSpaceAndBar(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCardForNumber(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBasicCardIssuerNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setBasicCardIssuerNetwork(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getObfuscatedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setObfuscatedNumber(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIssuerIconDrawableId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setIssuerIconDrawableId(I)V

    if-nez p2, :cond_2

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIsIncognito:Z

    if-nez p0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->setCreditCard(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mSaveCardCheckbox:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->setCreditCard(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setGUID(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mCardIssuerNetworks:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mEditorExpiryDate:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    return-object p0
.end method

.method private static findTargetProfile(Ljava/util/List;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIncompleteProfilesForBillingAddress:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mNumberField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    return-object p0
.end method

.method private isSameCreditCard(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getLastFourDigits()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getLastFourDigits()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->commitChanges(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Z)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->isSameCreditCard(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(Ljava/lang/String;Ljava/util/List;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->findTargetProfile(Ljava/util/List;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAcceptedPaymentMethodIfRecognized(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)V
    .locals 2

    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedMethod:Ljava/lang/String;

    const-string v1, "basic-card"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/BasicCardUtils;->convertBasicCardToNetworks(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAcceptedBasicCardIssuerNetworks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->addAcceptedNetwork(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 8
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->edit(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mTerrace:Lcom/sec/terrace/Terrace;

    new-instance v2, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-direct {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_2

    :cond_1
    move-object v5, p1

    :goto_2
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->getCard()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object v3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    const v2, 0x7f14011e

    goto :goto_3

    :cond_2
    const v2, 0x7f14014b

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, v3}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$4;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Ljava/lang/String;ZLcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIsLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->addLocalCardInputs(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getObfuscatedNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getFormattedExpirationDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIssuerIconDrawableId()I

    move-result v7

    invoke-static {v1, v2, v6, v7}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    :goto_4
    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->addBillingAddressDropdown(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprintOrIris()Z

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$5;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->setCancelCallback(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$6;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;ZLcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->setDoneCallback(Ljava/lang/Runnable;)V

    const-string p1, "207"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->show(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x23

    if-gt p1, p2, :cond_4

    return-void

    :cond_4
    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$7;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$7;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const p2, 0x7f0b0de7

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public updateBillingAddressIfComplete(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mIncompleteProfilesForBillingAddress:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->setBillingAddressLabel()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->mProfilesForBillingAddress:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
