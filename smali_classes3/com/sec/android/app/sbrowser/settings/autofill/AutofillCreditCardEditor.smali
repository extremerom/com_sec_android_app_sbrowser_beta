.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;
.super Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mBillingAddress:Landroid/widget/Spinner;

.field private mBillingAddressLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

.field private mBillingAddressPos:I

.field private mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mDescription:Landroid/widget/TextView;

.field private mExpirationDateLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

.field private mExpirationErrorLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

.field private mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mInitialCardNumber:Ljava/lang/String;

.field private mMonth:I

.field private mMonthErr:Z

.field private mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mPresentMonth:I

.field private mPresentYear:I

.field private mProfiles:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mMonthErr:Z

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mMonthErr:Z

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mYear:I

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->getDpToPx(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->handleExceptionForExpirationMonth()V

    return-void
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->handleExceptionForExpirationYear(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;Landroid/widget/EditText;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->isValidMonth(Landroid/widget/EditText;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->setBillingAddressContentDescription()V

    return-void
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->updateSaveButtonEnabled()V

    return-void
.end method

.method private addBillingAddressFromGUID(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfile(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddressPos:I

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getShippingAddressLabelWithCountryForPaymentRequest(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddressPos:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mProfiles:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddressPos:I

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->updateSaveButtonEnabled()V

    return-void
.end method

.method private addBillingAddressSpinner()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/ShapedArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f0e0049

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/ShapedArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mProfiles:Landroid/widget/ArrayAdapter;

    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mProfiles:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getShippingAddressLabelWithCountryForPaymentRequest(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mProfiles:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mProfiles:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mProfiles:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCard(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddressPos:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->setBillingAddressContentDescription()V

    :cond_6
    :goto_2
    return-void
.end method

.method private addCardDataToEditFields()V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCard(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mInitialCardNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mInitialCardNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "%02d"

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getCardNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getCardNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private disableKeyboardPredictionIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    :cond_0
    return-void
.end method

.method private getDpToPx(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private handleExceptionForExpirationMonth()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mMonthErr:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationErrorLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;->show(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationDateLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private handleExceptionForExpirationYear(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationErrorLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;->show(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationDateLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0601c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private isContentOfCardEquals(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isValidMonth(Landroid/widget/EditText;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/16 p1, 0xc

    if-gt p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddressPos:I

    return p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationDateLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationErrorLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    return-object p0
.end method

.method private registerFieldChangedListener()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$4;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$5;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$6;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$7;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    return-object p0
.end method

.method private setBillingAddressContentDescription()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mMonth:I

    return p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mMonthErr:Z

    return p0
.end method

.method private updateSaveButtonEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationErrorLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->isCardNumberValid(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;->CARD_NUMBER_VALIDATED:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->setSaveButtonEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->setSaveButtonEnabled(Z)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mPresentMonth:I

    return p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mPresentYear:I

    return p0
.end method

.method private wasCardNumberChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mInitialCardNumber:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->removeSpaceAndBar(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mYear:I

    return p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddressPos:I

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mMonth:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public cancelItemFromButtonForSALogging()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5037"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5033"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public cancelItemFromPopupForSALogging()V
    .locals 1

    const-string p0, "508"

    const-string v0, "5041"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dialogMessageFromEditor()I
    .locals 0

    const p0, 0x7f140100

    return p0
.end method

.method public discardItemFromPoupForSALogging()V
    .locals 1

    const-string p0, "508"

    const-string v0, "5042"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "508"

    return-object p0

    :cond_0
    const-string p0, "507"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p1, "guid"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->addBillingAddressFromGUID(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddressPos:I

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setSelection(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f140454

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p1

    invoke-virtual {p1}, LH6/o;->l()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "guid"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "random_key"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/KeyGenerator;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1410e0

    goto :goto_0

    :cond_0
    const v0, 0x7f1410e2

    :goto_0
    invoke-virtual {p3, v0}, Landroid/app/Activity;->setTitle(I)V

    const p3, 0x7f0b0493

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    const v1, 0x7f0e003c

    invoke-virtual {p1, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0b011f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v0, 0x7f0b011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b011e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->getDpToPx(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->getDpToPx(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->getDpToPx(I)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->getDpToPx(I)I

    move-result v3

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    const v2, 0x7f0b04e8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0116

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationDateLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    const v4, 0x7f0b0111

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddressLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f14012c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f14012b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationDateLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddressLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b0115

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mDescription:Landroid/widget/TextView;

    const v4, 0x7f0b011b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mScrollView:Landroid/widget/ScrollView;

    const v4, 0x7f0b048d

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    new-instance v8, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;

    invoke-direct {v8}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->NORMAL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    const/16 v9, 0x2001

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setPrevious(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f140134

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f14012d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140139

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0d49

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f140138

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    const p3, 0x7f0b0119

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationErrorLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setPrevious(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V

    const p3, 0x7f0b011c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setPrevious(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    const v0, 0x10000006

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    const p3, 0x7f0b0113

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p3, v6}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_1
    const p3, 0x7f0b0118

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0114

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result v1

    invoke-virtual {p3, v1, v6, v6, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result p3

    invoke-virtual {v0, p3, v6, v6, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result p3

    invoke-virtual {p1, p3, v6, v6, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result p1

    invoke-virtual {v3, p1, v6, v6, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->addBillingAddressSpinner()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->addCardDataToEditFields()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->registerFieldChangedListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->disableKeyboardPredictionIfNeeded()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$1;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$1;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const p3, 0x7f14012f

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const p3, 0x7f14012e

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->hideSpinnerDropDown(Landroid/widget/Spinner;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mPresentMonth:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mPresentYear:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->CARD_NUMBER_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->EXPIRY_DATE_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public saveEntry()Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->handleExceptionForExpirationMonth()V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationMonth:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationDateLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06022d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationErrorLabel:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;->hide()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_2
    move-object v9, v3

    :goto_0
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mExpirationYear:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_3
    move-object v10, v3

    :goto_1
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mNumberText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "[\\s|-]+"

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mBillingAddress:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->mCardNickNameText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    const-string v5, ""

    const-string v8, ""

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    invoke-static/range {v4 .. v20}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object v1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCardsForSettings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->wasCardNumberChanged()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->isContentOfCardEquals(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-boolean v6, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mIsContentOfItemEquals:Z

    return v2

    :cond_5
    invoke-virtual {v3, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->setCreditCard(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setGUID(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->getStatusLogForAutofillData()V

    return v6
.end method

.method public saveItemFromButtonForSALogging()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "5038"

    goto :goto_0

    :cond_0
    const-string p0, "5034"

    :goto_0
    const-string v1, "0"

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveItemFromPopupForSALogging()V
    .locals 1

    const-string p0, "508"

    const-string v0, "5043"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
