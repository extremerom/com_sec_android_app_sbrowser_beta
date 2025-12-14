.class public Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthConfirmActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getAuthManager()Lcom/sec/android/app/sbrowser/auth/AuthManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->updateActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setContentView()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setContentView()V

    const v0, 0x7f0e0545

    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V

    return-void
.end method

.method public shouldApplyDialogStyle()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

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
