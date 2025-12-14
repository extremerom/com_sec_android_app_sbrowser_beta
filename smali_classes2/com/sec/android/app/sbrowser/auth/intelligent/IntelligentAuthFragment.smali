.class public Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;
.super Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;
.source "SourceFile"


# instance fields
.field private mImageAdapter:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;-><init>()V

    return-void
.end method

.method private finishActivityWithDelay()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->stopAuthenticate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LG6/e;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$finishActivityWithDelay$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;->lambda$finishActivityWithDelay$0()V

    return-void
.end method


# virtual methods
.method public canAuthenticate()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthAltered()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasFingerprintAuth()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthAltered()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->canAuthenticate()Z

    move-result p0

    return p0
.end method

.method public getPreviewImage()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->getPreviewImage()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->initializeView(Landroid/view/View;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;-><init>(Landroid/app/Activity;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;

    return-void
.end method

.method public isMultiWindowModeSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;->finishActivityWithDelay()V

    const/4 p0, 0x1

    return p0
.end method

.method public onCancelClick()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;->finishActivityWithDelay()V

    return-void
.end method

.method public onTimeoutStateChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onTimeoutStateChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->onTimeoutStateChanged(Z)V

    return-void
.end method

.method public setDefaultText()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasFingerprintAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f1410af

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f140224

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f1410ae

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f14062c

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
