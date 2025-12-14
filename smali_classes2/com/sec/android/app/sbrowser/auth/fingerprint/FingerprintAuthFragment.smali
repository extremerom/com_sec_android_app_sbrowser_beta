.class public Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;
.super Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;
.source "SourceFile"


# instance fields
.field private mImageAdapter:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;

.field private mIrisImageAdapter:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public canAuthenticate()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthAltered()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->canAuthenticate()Z

    move-result p0

    return p0
.end method

.method public getPreviewImage()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mIrisImageAdapter:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->getPreviewImage()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->initializeView(Landroid/view/View;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportFingerprintAuthWithNonSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/fingerprint/NonSamsungFingerprintImageAdapter;

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/auth/fingerprint/NonSamsungFingerprintImageAdapter;-><init>(Landroid/view/View;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;-><init>(Landroid/view/View;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->setOnAuthChangedCallback(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter$OnAuthChangedCallback;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;-><init>(Landroid/app/Activity;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mIrisImageAdapter:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->getPreviewBackground()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mIrisImageAdapter:Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter;->setOnAuthChangedCallback(Lcom/sec/android/app/sbrowser/auth/iris/IrisImageAdapter$OnAuthChangedCallback;)V

    :goto_1
    return-void
.end method

.method public isMultiWindowModeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAuthRetry()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "onAuthRetry isLockout:"

    const-string v2, "FingerprintAuthFragment"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->setDefaultText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->onAuthRetry()V

    :cond_1
    return-void
.end method

.method public onAuthSuccess(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onAuthSuccess(I)V

    const-string v0, "onAuthSuccess authType:"

    const-string v1, "FingerprintAuthFragment"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->onAuthSuccess()V

    iget p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v0, 0x78

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onPause()V

    const-string v0, "onPause"

    const-string v1, "FingerprintAuthFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->disable(I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SemStatusBarManager::disable is failed in onPause"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onResume()V

    const-string v0, "onResume"

    const-string v1, "FingerprintAuthFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isNavigationBarHideEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_HOME:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_RECENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->disable(I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SemStatusBarManager::disable is failed in onResume"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onTimeoutStateChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onTimeoutStateChanged(Z)V

    const-string v0, "onTimeoutStateChanged isTimeOut:"

    const-string v1, "FingerprintAuthFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->onTimeoutStateChanged(Z)V

    return-void
.end method

.method public setDefaultText()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mIsDexMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f1410b0

    goto :goto_0

    :cond_1
    const p0, 0x7f1410ad

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f140e35

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f140224

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-void
.end method

.method public showDeniedView()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->showDialogIfRequired()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showIdentifyImg()V
    .locals 0

    return-void
.end method

.method public showMessage(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->showMessage(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintImageAdapter;->onAuthError(I)V

    return-void
.end method
