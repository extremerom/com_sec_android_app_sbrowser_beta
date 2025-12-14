.class public Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mActionBarButtonContainer:Landroid/widget/LinearLayout;

.field private mActionBarCancelButton:Landroid/widget/Button;

.field private mActionBarContainer:Landroid/widget/LinearLayout;

.field private mActionBarNextButton:Landroid/widget/Button;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mBiometricsCheckBox:Landroid/widget/CheckBox;

.field private mBottomBarButtonContainer:Landroid/widget/LinearLayout;

.field private mBottomBarCancelButton:Landroid/widget/Button;

.field private mBottomBarNextButton:Landroid/widget/Button;

.field private mCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mDescription:Landroid/widget/TextView;

.field private mDialogCancelButton:Landroid/widget/Button;

.field private mDialogTitle:Landroid/widget/TextView;

.field private mFirstPassword:Ljava/lang/String;

.field private mHandlePasswordDone:Z

.field private mIsFaceRegistered:Z

.field private mIsFingerprintRegistered:Z

.field private mIsIntelligentRegistered:Z

.field private mIsIrisRegistered:Z

.field private mNextButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPassWordEntryKeyListener:Landroid/view/View$OnKeyListener;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordEntryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mPasswordEntryTextChangedListener:Landroid/text/TextWatcher;

.field private mPasswordMaxLength:I

.field private mPasswordValidator:Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

.field private mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->Introduction:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mHandlePasswordDone:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsFingerprintRegistered:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsIrisRegistered:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsFaceRegistered:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsIntelligentRegistered:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$1;-><init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$2;-><init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mNextButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$3;-><init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPassWordEntryKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$4;-><init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$5;-><init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntryTextChangedListener:Landroid/text/TextWatcher;

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDescription:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordMaxLength:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->onPasswordChanged()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->updateUi()V

    return-void
.end method

.method private onPasswordChanged()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "CreatePasswordFragment"

    const-string v0, "onPasswordChanged there is no valid activity"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->updateBiometrics()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFingerprintAuthEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIrisAuthEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFaceAuthEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIntelligentAuthEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetAlteredBiometrics()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntryTextChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setResult(I)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/activity/d;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroidx/activity/d;-><init>(Landroidx/fragment/app/J;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setBiometricsCheckBox(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentScanSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    goto :goto_4

    :cond_1
    :goto_0
    const v0, 0x7f0b029f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_5

    const v0, 0x7f1400bf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->hasPassword()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isBiometricsUsedBefore()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$6;-><init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V
    .locals 0

    return-void
.end method

.method private updateUi()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    sget-object v3, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->Introduction:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordValidator:Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->setNextBtnEnabled(Z)V

    goto :goto_1

    :cond_0
    const v0, 0x7f1406a2

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->setNextBtnEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDescription:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->a(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->setNextBtnEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->getButtonText()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->setNextBtnText(I)V

    return-void
.end method


# virtual methods
.method public handlePassword()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mHandlePasswordDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    sget-object v2, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->Introduction:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordValidator:Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mFirstPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->NeedToConfirm:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->updateStage(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->NeedToConfirm:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    new-instance v2, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$7;-><init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->changePassword(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->ConfirmWrong:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->updateStage(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->showError(Ljava/lang/String;Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V

    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    new-instance p3, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;

    invoke-direct {p3}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordValidator:Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->getPasswordMaxLength()I

    move-result p3

    iput p3, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_1

    const p0, 0x7f0e0552

    invoke-virtual {p1, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0e0551

    invoke-virtual {p1, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f0e054d

    invoke-virtual {p1, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsFingerprintRegistered:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsIrisRegistered:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsFaceRegistered:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsIntelligentRegistered:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsFingerprintRegistered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsIrisRegistered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsFaceRegistered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mIsIntelligentRegistered:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordOnResumeFromCreatePassword()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ui_stage"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "first_password"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mHandlePasswordDone:Z

    const v2, 0x7f0b00fc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0b0089

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarTitle:Landroid/widget/TextView;

    const v3, 0x7f140e0c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0b0081

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0100

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDialogTitle:Landroid/widget/TextView;

    const v2, 0x7f0b0acb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDialogCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDialogCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDialogTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    const v2, 0x7f0b007e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0b01d2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mNextButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mNextButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0888

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPassWordEntryKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntryTextChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->setBiometricsCheckBox(Landroid/view/View;)V

    if-nez p2, :cond_8

    sget-object p1, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->Introduction:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->updateStage(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V

    goto :goto_4

    :cond_8
    const-string p1, "first_password"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mFirstPassword:Ljava/lang/String;

    const-string p1, "ui_stage"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->updateStage(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarButtonContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->setWindowInsetsAnimation(Landroid/app/Activity;Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public setNextBtnEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarNextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarNextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_1
    return-void
.end method

.method public setNextBtnText(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mActionBarNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mBottomBarNextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public updateStage(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDescription:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mUiStage:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->updateUi()V

    :cond_0
    if-eq v2, p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$8;

    iget v3, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$8;-><init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;I)V

    sget-object v3, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->Introduction:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    if-ne p1, v3, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    new-array p1, v1, [Landroid/text/InputFilter;

    aput-object v2, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->NeedToConfirm:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v2, p0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array p0, v1, [Landroid/text/InputFilter;

    aput-object v2, p0, v0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_3
    :goto_0
    return-void
.end method
