.class public Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress$CompletenessCheckType;,
        Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress$CompletionStatus;
    }
.end annotation


# static fields
.field private static sRegionCodePattern:Ljava/util/regex/Pattern;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mBillingLabel:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

.field private mShippingLabelWithCountry:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mShippingLabelWithoutCountry:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V
    .locals 6

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsEditable:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->checkAndUpdateAddressCompleteness()V

    return-void
.end method

.method public static checkAddressCompletionStatus(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)I
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    move v1, p1

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getCountryCode(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getRequiredAddressFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfileField(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    move v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x3

    :cond_5
    if-le p1, v0, :cond_6

    const/4 v1, 0x4

    :cond_6
    return v1
.end method

.method private checkAndUpdateAddressCompleteness()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->checkAddressCompletionStatus(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getEditMessageAndTitleResIds(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mEditMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsComplete:Z

    return-void
.end method

.method public static getCountryCode(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->sRegionCodePattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string v0, "^[A-Z]{2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->sRegionCodePattern:Ljava/util/regex/Pattern;

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->sRegionCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getEditMessageAndTitleResIds(I)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f1408ea

    goto :goto_1

    :cond_1
    const p0, 0x7f1408f5

    goto :goto_1

    :cond_2
    const p0, 0x7f1408f1

    goto :goto_1

    :cond_3
    const p0, 0x7f1408e1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getProfileField(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

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
.method public completeAddress(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mShippingLabelWithCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mShippingLabelWithoutCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mBillingLabel:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateIdentifierAndLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->checkAndUpdateAddressCompleteness()V

    return-void
.end method

.method public getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    return-object p0
.end method

.method public setBillingAddressLabel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mBillingLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getBillingAddressLabelForPaymentRequest(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mBillingLabel:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mBillingLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateSublabel(Ljava/lang/String;)V

    return-void
.end method

.method public setShippingAddressLabelWithCountry()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mShippingLabelWithCountry:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getShippingAddressLabelWithCountryForPaymentRequest(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mShippingLabelWithCountry:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mShippingLabelWithCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateSublabel(Ljava/lang/String;)V

    return-void
.end method

.method public setShippingAddressLabelWithoutCountry()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mShippingLabelWithoutCountry:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getShippingAddressLabelWithoutCountryForPaymentRequest(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mShippingLabelWithoutCountry:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mShippingLabelWithoutCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateSublabel(Ljava/lang/String;)V

    return-void
.end method

.method public toPaymentAddress()Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;
    .locals 3

    new-instance v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    invoke-direct {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getCountryCode(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->country:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->addressLine:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->region:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->city:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->dependentLocality:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->postalCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->sortingCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->organization:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->recipient:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->phone:Ljava/lang/String;

    return-object v0
.end method
