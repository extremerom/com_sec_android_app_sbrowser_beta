.class public Lcom/sec/android/app/sbrowser/auth/face/FaceAuthFragment;
.super Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;
.source "SourceFile"


# instance fields
.field private mImageAdapter:Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;


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

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthAltered()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceRegistered()Z

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

.method public initializeView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->initializeView(Landroid/view/View;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthFragment;->mImageAdapter:Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/face/FaceImageAdapter;->initialize()V

    return-void
.end method

.method public isMultiWindowModeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->onPause()V

    const-string v0, "onPause"

    const-string v1, "FaceAuthFragment"

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

    const-string v1, "FaceAuthFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasFingerprintAuth()Z

    move-result v0

    if-eqz v0, :cond_0

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

    const v0, 0x7f1410ac

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricAuthFragment;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f140521

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
