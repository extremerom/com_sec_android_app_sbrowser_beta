.class public Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthActivity;
.source "SourceFile"


# instance fields
.field private mResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;->mResult:I

    return-void
.end method


# virtual methods
.method public onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->finish()V

    :cond_0
    return-void
.end method

.method public setAuthActivity(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->setAuthPromptActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public setResultToParent(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;->mResult:I

    return-void
.end method

.method public shouldResetAuthActivity()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;->mResult:I

    const/16 v0, 0x62

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
