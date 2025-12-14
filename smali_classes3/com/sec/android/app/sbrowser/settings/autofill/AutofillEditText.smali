.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;
.source "SourceFile"


# instance fields
.field private mLabelForFilter:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

.field private mPrevious:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private clearFieldErrorMessage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->mLabelForFilter:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->EXPIRY_DATE_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setErrorText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$setAutofillEditText$0(Landroid/view/View;)V
    .locals 1

    const-string p0, "AutofillEdittext"

    const-string v0, "onClickListenerCalled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$setAutofillEditText$1(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->mLabelForFilter:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    sget-object p2, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->CARD_NUMBER_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setCardNumberErrorText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->clearFieldErrorMessage(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->lambda$setAutofillEditText$1(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic r(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->lambda$setAutofillEditText$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->mLabelForFilter:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    return-object p0
.end method

.method private setCardNumberErrorText(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->isCardNumberValid(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;->CARD_NUMBER_REQUIRED:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14013b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setErrorText(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;->CARD_NUMBER_NOT_VALIDATED:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140142

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setErrorText(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setErrorText(Ljava/lang/String;)V

    return-void
.end method

.method private setErrorText(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setFilterForEditText()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$4;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$autofill$AutofillConstants$LabelForFilter:[I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->mLabelForFilter:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_2

    if-eq v3, v1, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "^[\\d- ]+$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$1;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$1;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;Ljava/util/regex/Pattern;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f14013f

    const/16 v7, 0x13

    const/16 v8, 0x1f

    invoke-virtual {p0, v5, v8, v6, v7}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->getMaxLengthFilterWithTip(Landroid/content/Context;III)Landroid/text/InputFilter;

    move-result-object p0

    new-array v1, v1, [Landroid/text/InputFilter;

    aput-object v4, v1, v0

    aput-object p0, v1, v2

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->getMaxLengthFilterWithTip(Landroid/content/Context;)Landroid/text/InputFilter;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getEmojiExcludeFilter(Landroid/content/Context;)Landroid/text/InputFilter;

    move-result-object p0

    new-array v1, v1, [Landroid/text/InputFilter;

    aput-object v4, v1, v0

    aput-object p0, v1, v2

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->getMaxLengthFilterWithTip(Landroid/content/Context;)Landroid/text/InputFilter;

    move-result-object p0

    new-array v2, v2, [Landroid/text/InputFilter;

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->clearFieldErrorMessage(Z)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setCardNumberErrorText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setErrorText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMaxLengthFilterWithTip(Landroid/content/Context;)Landroid/text/InputFilter;
    .locals 2

    const/16 v0, 0x100

    const v1, 0x7f140677

    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->getMaxLengthFilterWithTip(Landroid/content/Context;III)Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public getMaxLengthFilterWithTip(Landroid/content/Context;III)Landroid/text/InputFilter;
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;ILandroid/content/Context;II)V

    return-object v6
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->mPrevious:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    return-void
.end method

.method public setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->mLabelForFilter:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setFilterForEditText()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/autofill/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/c;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$2;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setPrevious(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->mPrevious:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    return-void
.end method
