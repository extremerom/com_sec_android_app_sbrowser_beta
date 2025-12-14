.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;
.super Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;


# instance fields
.field private mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

.field private mCountriesDropdown:Landroid/widget/Spinner;

.field private mCountryCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCountryPos:I

.field private mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mFieldChangedListener:Landroid/text/TextWatcher;

.field private mFieldEditText:Landroid/widget/EditText;

.field private mFirstAddressFieldIdx:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCalledByCountryItemChanged:Z

.field private mIsCountryItemEdited:Z

.field private mIsTextEdited:Z

.field private mLanguageCodeString:Ljava/lang/String;

.field private mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mUseSavedProfileLanguage:Z

.field private mWidgetRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;-><init>()V

    return-void
.end method

.method private createAndPopulateEditFields()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfile(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mLanguageCodeString:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mUseSavedProfileLanguage:Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    if-ne v4, v2, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    if-ne v4, v2, :cond_3

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->resetFormFields(I)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    if-ne v0, v2, :cond_5

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    :cond_5
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->resetFormFields(I)V

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mFirstAddressFieldIdx:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setCursorAtLastStringForAddress(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setCursorAtLastStringForContact()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setCountryContentDescription()V

    return-void
.end method

.method private disableKeyboardPredictionIfNeeded()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    :cond_2
    return-void
.end method

.method private getFieldText(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private isAllFieldEmpty()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private isAllFieldEqual(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_2
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_3
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_4
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_5
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_6
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_7
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_8
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    return v1

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

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

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

.method private isCountryChanged(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_1

    move p1, v0

    :cond_1
    if-eq p1, p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private isTextChanged(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->isAllFieldEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->isAllFieldEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->isAllFieldEqual(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$setCursorAtLastStringForAddress$0(Landroid/widget/EditText;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static synthetic n(Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->lambda$setCursorAtLastStringForAddress$0(Landroid/widget/EditText;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsCalledByCountryItemChanged:Z

    return p0
.end method

.method private populateCountriesDropdown()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getSupportedCountries()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const v3, 0x7f0e0049

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$2;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;Landroid/content/Context;ILjava/util/List;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e021f

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0e0048

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsCountryItemEdited:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsTextEdited:Z

    return p0
.end method

.method private registerFieldChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$3;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private resetFormFields(I)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aput-object v5, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mUseSavedProfileLanguage:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mLanguageCodeString:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, p1, v3}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getAddressUiComponents(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mUseSavedProfileLanguage:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getCurrentBestLanguageCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mLanguageCodeString:Ljava/lang/String;

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0e003f

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0b0124

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f0b048d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iget-object v7, v3, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    sget-object v7, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->NORMAL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget v7, v3, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    const v8, 0x10000005

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    const v8, 0x82001

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setPrevious(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iget v7, v3, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    aput-object v4, v5, v7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_5

    iget v2, v3, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mFirstAddressFieldIdx:I

    move v2, v1

    :cond_5
    move-object v5, v4

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1, v5}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setPrevious(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setPrevious(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V

    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    array-length v2, p1

    if-ge v1, v2, :cond_8

    aget-object p1, p1, v1

    if-eqz p1, :cond_7

    aget-object p1, v0, v1

    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setAddressFieldLabels()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setAddressFieldAutofillHint()V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    return-object p0
.end method

.method private setAddressFieldAutofillHint()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldAutofillHint(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldAutofillHint(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldAutofillHint(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldAutofillHint(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldAutofillHint(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldAutofillHint(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldAutofillHint(ILjava/lang/String;)V

    return-void
.end method

.method private setAddressFieldLabels()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldLabel(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldLabel(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldLabel(ILjava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "CEDEX"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldLabel(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldLabel(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldLabel(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldLabel(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setFieldLabel(ILjava/lang/String;)V

    return-void
.end method

.method private setCountryContentDescription()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

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

    const v2, 0x7f140193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCursorAtLastStringForAddress(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mFieldEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    new-instance p0, Lcom/sec/android/app/sbrowser/settings/autofill/a;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setCursorAtLastStringForContact()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private setFieldAutofillHint(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setFieldLabel(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setFieldText(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsTextEdited:Z

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->isTextChanged(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancelItemFromButtonForSALogging()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5020"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancelItemFromPopupForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5023"

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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5024"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "504"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mFieldChangedListener:Landroid/text/TextWatcher;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140128

    goto :goto_0

    :cond_0
    const v0, 0x7f140130

    :goto_0
    invoke-virtual {p3, v0}, Landroid/app/Activity;->setTitle(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mInflater:Landroid/view/LayoutInflater;

    const/16 p3, 0x9

    new-array p3, p3, [Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAddressFields:[Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    const p3, 0x7f0b0493

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    const v1, 0x7f0e0046

    invoke-virtual {p1, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0b0131

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0134

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f0b048d

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->NORMAL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {p3, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14018d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->EMAIL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    const v0, 0x800d1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    const v0, 0x10000006

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    const p3, 0x7f0b0135

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mWidgetRoot:Landroid/view/ViewGroup;

    const p3, 0x7f0b0132

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

    const p3, 0x7f0b0138

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f140287

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_1
    const p3, 0x7f0b0133

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v1, 0x7f0b011a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result v1

    invoke-virtual {p3, v1, v0, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result p3

    invoke-virtual {p1, p3, v0, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    new-instance p1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    invoke-direct {p1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mAutofillProfileBridge:Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsTextEdited:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsCountryItemEdited:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsCalledByCountryItemChanged:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mFirstAddressFieldIdx:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->populateCountriesDropdown()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->createAndPopulateEditFields()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->registerFieldChangedListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->disableKeyboardPredictionIfNeeded()V

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

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    if-eq p3, p1, :cond_3

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mUseSavedProfileLanguage:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsCalledByCountryItemChanged:Z

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->resetFormFields(I)V

    iget p4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mFirstAddressFieldIdx:I

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setCursorAtLastStringForAddress(I)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsCalledByCountryItemChanged:Z

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p4

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-virtual {p4, p5}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfile(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object p4

    invoke-direct {p0, p4, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->isCountryChanged(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsCountryItemEdited:Z

    iget-boolean p4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mIsTextEdited:Z

    if-nez p4, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p3, p2

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->setCountryContentDescription()V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move p1, p2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->setSaveButtonEnabled(Z)V

    :cond_3
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

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

.method public onPersonalDataChanged()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->unregisterDataObserver(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "guid"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

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
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountriesDropdown:Landroid/widget/Spinner;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public saveEntry()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mPhoneEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mEmailEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x2

    invoke-direct {v0, v15}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v11

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    iget v12, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->mLanguageCodeString:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v17, v3

    move/from16 v3, v16

    move-object/from16 v15, v17

    invoke-static/range {v2 .. v15}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->create(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {v0, v2, v5}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->isContentOfProfileEquals(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mIsContentOfItemEquals:Z

    return v6

    :cond_1
    invoke-virtual {v3, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->setProfile(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->registerDataObserver(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)Z

    return v6

    :cond_2
    return v1
.end method

.method public saveItemFromButtonForSALogging()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5021"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveItemFromPopupForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5025"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
