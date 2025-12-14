.class public Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthLockScreenActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthView;


# instance fields
.field private mActiveButtonDrawable:I

.field private mActiveButtonTextColor:I

.field private mBiometricsImageContainer:Landroid/view/View;

.field private mFaceButton:Landroid/view/View;

.field private mFaceButtonText:Landroid/widget/TextView;

.field private mFingerprintButton:Landroid/view/View;

.field private mFingerprintButtonText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mInactiveButtonDrawable:I

.field private mInactiveButtonTextColor:I

.field private mIntelligentButton:Landroid/view/View;

.field private mIrisButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthLockScreenActivity;-><init>()V

    return-void
.end method

.method private bindView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->C(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    const v0, 0x7f0800c0

    iput v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mActiveButtonDrawable:I

    const v0, 0x7f06011f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mActiveButtonTextColor:I

    const v0, 0x7f0800c1

    iput v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mInactiveButtonDrawable:I

    const v0, 0x7f060121

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mInactiveButtonTextColor:I

    const v0, 0x7f0b00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b079f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mBiometricsImageContainer:Landroid/view/View;

    const v0, 0x7f0b0518

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFingerprintButton:Landroid/view/View;

    const v0, 0x7f0b0519

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFingerprintButtonText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFingerprintButton:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/fingerprint/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/a;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->updateFingerprintButton(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mBiometricsImageContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b04f7

    invoke-virtual {p0, p1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFaceButton:Landroid/view/View;

    const p1, 0x7f0b04f8

    invoke-virtual {p0, p1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFaceButtonText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFaceButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFaceButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/fingerprint/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/fingerprint/a;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->updateFaceButton(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mBiometricsImageContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b0622

    invoke-virtual {p0, p1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mIntelligentButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mIntelligentButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/fingerprint/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/auth/fingerprint/a;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mBiometricsImageContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b0643

    invoke-virtual {p0, p1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mIrisButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mIrisButton:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/fingerprint/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/a;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->lambda$bindView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->lambda$bindView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->lambda$bindView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->lambda$bindView$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$bindView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->onClickFingerprintButton()V

    return-void
.end method

.method private synthetic lambda$bindView$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->onClickFaceButton()V

    return-void
.end method

.method private synthetic lambda$bindView$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->onClickIntelligentButton()V

    return-void
.end method

.method private synthetic lambda$bindView$3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->onClickIrisButton()V

    return-void
.end method

.method private onClickFaceButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->updateFingerprintButton(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->updateFaceButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onAuthChanged(I)V

    return-void
.end method

.method private onClickFingerprintButton()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->updateFingerprintButton(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->updateFaceButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onAuthChanged(I)V

    return-void
.end method

.method private onClickIntelligentButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    check-cast v0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onAuthChanged(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private onClickIrisButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    check-cast v0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onAuthChanged(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateFaceButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFaceButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mActiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFaceButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mActiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFaceButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mInactiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFaceButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mInactiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private updateFingerprintButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFingerprintButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mActiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFingerprintButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mActiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFingerprintButton:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mInactiveButtonDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mFingerprintButtonText:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->mInactiveButtonTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .locals 2

    invoke-interface {p0, p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthView;->getBottomMarginForFingerprint(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->getBottomMargin()I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getKnoxLogoBottomMargin()I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public onPreInflation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthLockScreenActivity;->onPreInflation()V

    return-void
.end method

.method public setContentView()V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const v1, 0x7f0e0219

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->createFullscreenDialog(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setContentView()V

    invoke-virtual {p0, v1}, Lm/n;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthLockScreenActivity;->bindView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public shouldApplyDialogStyle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowFullScreenDialogInMultiWindow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
