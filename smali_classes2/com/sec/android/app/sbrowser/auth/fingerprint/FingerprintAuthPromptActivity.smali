.class public Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthPromptActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;-><init>()V

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

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/p;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

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
