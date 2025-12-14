.class public Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;
.super Lcom/sec/android/app/sbrowser/auth/AuthFragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthListener;
.implements Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;


# instance fields
.field private mActionBarButtonContainer:Landroid/view/View;

.field private mActionBarNextButton:Landroid/widget/Button;

.field private mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

.field private mBiometricsCheckBox:Landroid/widget/CheckBox;

.field private mBottomBarButtonContainer:Landroid/view/View;

.field private mBottomBarNextButton:Landroid/widget/Button;

.field private mDescription:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsBiometricsVisible:Z

.field private mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private mResetSecretModeButton:Landroid/widget/Button;

.field private final mRunnableForAccessibility:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$1;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$2;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mRunnableForAccessibility:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$inflateConfirmLayout$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$handlePassword$2(Z)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mActionBarNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mDescription:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/Button;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/Button;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewFocusable(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private adjustBottomBarFontSize(Landroid/widget/Button;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getGlobalFontSize()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ff0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarNextButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setButtonTextSize(Landroid/widget/Button;I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setButtonTextSize(Landroid/widget/Button;I)V

    :cond_1
    return-void
.end method

.method private getConfirmLayoutResource()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0e054c

    goto :goto_0

    :cond_0
    const p0, 0x7f0e054a

    :goto_0
    return p0
.end method

.method private getDefaultHeader()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->isBiometricsAltered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    const/16 v1, 0x79

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthAltered()Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f140628

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthAltered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthAltered()Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f140699

    return p0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthAltered()Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f14069a

    return p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthAltered()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f14069b

    return p0

    :cond_4
    const p0, 0x7f140e2a

    return p0
.end method

.method private getResumeLayoutResource()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0e0549

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0e0548

    goto :goto_0

    :cond_1
    const p0, 0x7f0e0546

    :goto_0
    return p0
.end method

.method private getSettingLayoutResource()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0e0552

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0e0551

    goto :goto_0

    :cond_1
    const p0, 0x7f0e054d

    :goto_0
    return p0
.end method

.method private handlePassword()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    new-instance v2, Lcom/sec/android/app/sbrowser/auth/AuthParam;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/auth/AuthParam;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PasswordAuthFragment"

    const-string v2, "password confirmed. start to migrate SDP data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->getInstance()Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/sec/android/app/sbrowser/auth/password/c;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/auth/password/c;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->migrationToSdp(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;)V

    goto :goto_1

    :cond_2
    const v0, 0x7f14069e

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->showError(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private inflateConfirmLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->getConfirmLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0acb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/b;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/password/b;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private inflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->inflateConfirmLayout(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x79

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->inflateResumeLayout(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->inflateSettingLayout(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->updateCommonLayout(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mRunnableForAccessibility:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mRunnableForAccessibility:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method private inflateResumeLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->getResumeLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0412

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/b;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/password/b;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method

.method private inflateSettingLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->getSettingLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->updateActionBar(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->updateDialog(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->updateBottomBar(Landroid/view/View;)V

    return-object p1
.end method

.method private isBiometricsAltered()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthAltered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthAltered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthAltered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthAltered()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isBiometricsRegistered()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceRegistered()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isBiometricsVisible()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasBiometricAuth()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->isPasswordRequestCode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->isBiometricsRegistered()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isPasswordRequestCode()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x67

    if-eq p0, v0, :cond_1

    const/16 v0, 0x68

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isViewVisible(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handlePassword$2(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$inflateConfirmLayout$4(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->onCancelButtonClick()V

    return-void
.end method

.method private synthetic lambda$inflateResumeLayout$5(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setDisabledClicked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setSecretModeEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onAttemptLockout$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->onCancelButtonClick()V

    return-void
.end method

.method private synthetic lambda$onAttemptLockout$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$setBiometricsCheckBoxVisibility$3(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordBiometricsCheckBoxChangedFromPasswordAuth(ZI)V

    return-void
.end method

.method private synthetic lambda$updateActionBar$6(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->onCancelButtonClick()V

    return-void
.end method

.method private synthetic lambda$updateActionBar$7(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->onNextButtonClick()V

    return-void
.end method

.method private synthetic lambda$updateBottomBar$8(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->onCancelButtonClick()V

    return-void
.end method

.method private synthetic lambda$updateBottomBar$9(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->onNextButtonClick()V

    return-void
.end method

.method private synthetic lambda$updateCommonLayout$10(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0xa0

    if-ne p2, p1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateCommonLayout$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_0

    return p1

    :cond_0
    if-eqz p2, :cond_2

    const/4 p3, 0x6

    if-eq p2, p3, :cond_2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->handlePassword()V

    return p1
.end method

.method private synthetic lambda$updateCommonLayout$12(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordResetButtonClickFromPasswordAuth(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->showResetDialog()V

    return-void
.end method

.method private onCancelButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordCancelButtonClickFromPasswordAuth()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onNextButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordNextButtonClickFromPasswordAuth()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->handlePassword()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mActionBarNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$updateActionBar$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$updateBottomBar$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$onAttemptLockout$1()V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$inflateResumeLayout$5(Landroid/view/View;)V

    return-void
.end method

.method private setBiometricsCheckBoxVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mIsBiometricsVisible:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/auth/password/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method private setButtonTextSize(Landroid/widget/Button;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private setViewEnabled(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setViewFocusable(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setViewVisibility(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldShowBottomBar()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private showError(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$setBiometricsCheckBoxVisibility$3(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$onAttemptLockout$0(Landroid/view/View;)V

    return-void
.end method

.method private updateActionBar(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0b0089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f140e29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    :cond_0
    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/b;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/auth/password/b;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mActionBarNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/b;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/auth/password/b;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mActionBarNextButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewEnabled(Landroid/view/View;Z)V

    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mActionBarButtonContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->shouldShowBottomBar()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mActionBarButtonContainer:Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private updateBottomBar(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0b01d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/password/b;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b01d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarNextButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/sbrowser/auth/password/b;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/auth/password/b;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;I)V

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarNextButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewEnabled(Landroid/view/View;Z)V

    const v1, 0x7f0b01d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarButtonContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->shouldShowBottomBar()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarButtonContainer:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->adjustBottomBarFontSize(Landroid/widget/Button;)V

    return-void
.end method

.method private updateCommonLayout(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->getDefaultHeader()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthAltered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mDescription:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ff1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_0
    const v0, 0x7f0b0888

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, LFa/e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, LFa/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, LFa/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LFa/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$3;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    const v0, 0x7f0b029f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v2, 0x78

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x79

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f1400bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const v1, 0x7f140e34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_1
    const v0, 0x7f0b09fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetSecretModeButton:Landroid/widget/Button;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/auth/password/b;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDialog(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b0acb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    const v0, 0x7f0b0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$updateActionBar$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$updateBottomBar$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$updateCommonLayout$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$updateCommonLayout$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->lambda$updateCommonLayout$10(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onAttemptLockout()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetSecretModeButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mActionBarButtonContainer:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarButtonContainer:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0acb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/b;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/password/b;-><init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, LG6/e;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAuthFail()V
    .locals 1

    const v0, 0x7f14069e

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->showError(I)V

    return-void
.end method

.method public onAuthLockout(J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetSecretModeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetSecretModeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->handleAttemptLockout(J)V

    return-void
.end method

.method public onAuthSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBiometricsCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->updateBiometrics()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetAlteredBiometrics()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->unlockBiometricsAuth()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->enableSecretMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthenticatorFactory;->create(ILandroid/app/Activity;)Lcom/sec/android/app/sbrowser/auth/Authenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->inflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->setListener(Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarButtonContainer:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->isViewVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarButtonContainer:Landroid/view/View;

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->setWindowInsetsAnimation(Landroid/app/Activity;Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onLockoutFinished()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->getDefaultHeader()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setBiometricsCheckBoxVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetSecretModeButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->shouldShowBottomBar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarButtonContainer:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mActionBarButtonContainer:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mBottomBarButtonContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mActionBarButtonContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0acb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLockoutAttemptDeadlineWithTimeoutMs(J)J

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordOnResumeFromPasswordAuth(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->isBiometricsVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mIsBiometricsVisible:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setBiometricsCheckBoxVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->handleAttemptLockout(J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->getDefaultHeader()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mResetSecretModeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_2

    const/16 v1, 0x79

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->resetAttemptLockout()V

    return-void
.end method
