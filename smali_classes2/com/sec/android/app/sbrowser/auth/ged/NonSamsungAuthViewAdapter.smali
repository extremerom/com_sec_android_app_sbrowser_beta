.class public Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    const/16 p2, 0x20

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/auth/AuthenticatorFactory;->create(ILandroid/app/Activity;)Lcom/sec/android/app/sbrowser/auth/Authenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-void
.end method

.method private handleLockout()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->supportLockoutForNonSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setDefaultLockoutAttemptDeadlineWithTimeoutMs()J

    move-result-wide v0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->onAuthLockout(J)V

    const/4 p0, 0x1

    return p0
.end method

.method private showRetryErrorPopup(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140e20

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelAuth()V
    .locals 2

    const-string v0, "NonSamsungAuthViewAdapter"

    const-string v1, "Cancel Authenticate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->cancelAuth()V

    return-void
.end method

.method public onAuthBlock()V
    .locals 2

    const-string v0, "NonSamsungAuthViewAdapter"

    const-string v1, "onAuthBlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->lockBiometricsAuth()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onAuthBlock()V

    return-void
.end method

.method public onAuthError(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthError errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NonSamsungAuthViewAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onAuthError errorMessage:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->handleLockout()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->showRetryErrorPopup(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x12e

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x12f

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->showRetryErrorPopup(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAuthFail()V
    .locals 1

    const-string p0, "NonSamsungAuthViewAdapter"

    const-string v0, "onAuthFail"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthLockout(J)V
    .locals 2

    const-string v0, "onAuthLockout deadline:"

    const-string v1, "NonSamsungAuthViewAdapter"

    invoke-static {p1, p2, v0, v1}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onTimeoutStateChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showHandleAttemptLockout(J)V

    return-void
.end method

.method public onAuthRetry()V
    .locals 1

    const-string p0, "NonSamsungAuthViewAdapter"

    const-string v0, "onAuthRetry"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthSuccess()V
    .locals 2

    const-string v0, "NonSamsungAuthViewAdapter"

    const-string v1, "onAuthSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    const/16 v0, 0x20

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onAuthSuccess(I)V

    return-void
.end method

.method public startAuth()V
    .locals 2

    const-string v0, "NonSamsungAuthViewAdapter"

    const-string v1, "Start Authenticate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    return-void
.end method
