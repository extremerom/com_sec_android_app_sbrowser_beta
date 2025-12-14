.class public Lcom/sec/android/app/sbrowser/auth/face/FaceAuthPromptActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasFingerprintAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getInDisplayFingerprintSensorBottomMargin(Z)I

    move-result p0

    return p0

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

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onPreInflation()V

    return-void
.end method

.method public setContentView()V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const v1, 0x7f0e020f

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->createFullscreenDialog(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setContentView()V

    invoke-virtual {p0, v1}, Lm/n;->setContentView(I)V

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
