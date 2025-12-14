.class public Lcom/sec/android/app/sbrowser/auth/AuthLockScreenActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/auth/AuthLockScreenActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->dismissDialog()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->finish()V

    return-void
.end method

.method public onPreInflation()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onPreInflation()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->finish()V

    :cond_0
    return-void
.end method

.method public overrideEnterAnimation()V
    .locals 1

    const v0, 0x7f01000a

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public setAuthActivity(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->setAuthLockScreenActivity(Landroid/app/Activity;)V

    return-void
.end method
