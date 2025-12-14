.class public Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;
.implements Lcom/sec/android/app/sbrowser/auth/AuthListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

.field private mView:Lcom/sec/android/app/sbrowser/auth/AuthView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    const/16 p2, 0x10

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/auth/AuthenticatorFactory;->create(ILandroid/app/Activity;)Lcom/sec/android/app/sbrowser/auth/Authenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;)Lcom/sec/android/app/sbrowser/auth/AuthView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    return-object p0
.end method


# virtual methods
.method public cancelAuth()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->cancelAuth()V

    return-void
.end method

.method public onAuthBlock()V
    .locals 2

    const-string v0, "IntelligentAuthenticator"

    const-string v1, "onAuthBlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->lockBiometricsAuth()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onAuthBlock()V

    return-void
.end method

.method public onAuthError(ILjava/lang/String;)V
    .locals 1

    const-string p1, "onAuthError errorMessage:"

    const-string v0, "IntelligentAuthenticator"

    invoke-static {p1, p2, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140e20

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthFail()V
    .locals 3

    const-string v0, "IntelligentAuthenticator"

    const-string v1, "onAuthFail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140e1e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f140e1d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthLockout(J)V
    .locals 2

    const-string v0, "onAuthLockout deadline:"

    const-string v1, "IntelligentAuthenticator"

    invoke-static {p1, p2, v0, v1}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onTimeoutStateChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showHandleAttemptLockout(J)V

    return-void
.end method

.method public onAuthRetry()V
    .locals 1

    const-string p0, "IntelligentAuthenticator"

    const-string v0, "onAuthRetry"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthSuccess()V
    .locals 4

    const-string v0, "IntelligentAuthenticator"

    const-string v1, "onAuthSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startAuth()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeStandalone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    const v0, 0x7f14062a

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onAuthCancel(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFlipClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "IntelligentAuthenticator"

    const-string v1, "Start Intelligent Authenticate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/AuthParam;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->getPreviewImage()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/auth/AuthParam;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    :cond_2
    return-void
.end method
