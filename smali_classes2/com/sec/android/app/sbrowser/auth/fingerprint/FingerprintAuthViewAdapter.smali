.class public Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;
.implements Lcom/sec/android/app/sbrowser/auth/AuthListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

.field private mIdentifyHandler:Landroid/os/Handler;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

.field private mTimeoutTimer:Landroid/os/CountDownTimer;

.field private mView:Lcom/sec/android/app/sbrowser/auth/AuthView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/auth/AuthenticatorFactory;->create(ILandroid/app/Activity;)Lcom/sec/android/app/sbrowser/auth/Authenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$1;

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;JJ)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mTimeoutTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Lcom/sec/android/app/sbrowser/auth/Authenticator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mTimeoutTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method private createHandlerIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Lcom/sec/android/app/sbrowser/auth/AuthView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->onAuthTimeout()V

    return-void
.end method

.method private onAuthTimeout()V
    .locals 3

    const-string v0, "FingerprintAuthViewAdapter"

    const-string v1, "Authentication time out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->cancelAuth()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140555

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->createHandlerIfNeeded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private retryAuth()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->createHandlerIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendTaskToBack()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->createHandlerIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setKeepScreenOn(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method


# virtual methods
.method public cancelAuth()V
    .locals 2

    const-string v0, "FingerprintAuthViewAdapter"

    const-string v1, "cancelAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    return-void
.end method

.method public onAuthBlock()V
    .locals 2

    const-string v0, "FingerprintAuthViewAdapter"

    const-string v1, "onAuthBlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mTimeoutTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->lockBiometricsAuth()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onAuthBlock()V

    return-void
.end method

.method public onAuthError(ILjava/lang/String;)V
    .locals 2

    const-string v0, "onAuthError errorMessage:"

    const-string v1, "FingerprintAuthViewAdapter"

    invoke-static {v0, p2, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mTimeoutTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "Authentification status : "

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "Authentication cancelled."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "Fingerprint locked out permanent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$4;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$4;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    const-string v0, "Authentication user cancelled."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showIdentifyImg()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->sendTaskToBack()V

    goto :goto_0

    :pswitch_4
    const-string v0, "Authentication error wipe"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->retryAuth()V

    goto :goto_0

    :pswitch_5
    const-string v0, "Authentication time out"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->sendTaskToBack()V

    goto :goto_0

    :pswitch_6
    const-string v0, "Authentication error move"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->retryAuth()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAuthFail()V
    .locals 3

    const-string v0, "FingerprintAuthViewAdapter"

    const-string v1, "onAuthFail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mTimeoutTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140696

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showMessage(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->retryAuth()V

    return-void
.end method

.method public onAuthLockout(J)V
    .locals 2

    const-string v0, "onAuthLockout deadline:"

    const-string v1, "FingerprintAuthViewAdapter"

    invoke-static {p1, p2, v0, v1}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mTimeoutTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onTimeoutStateChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showHandleAttemptLockout(J)V

    return-void
.end method

.method public onAuthRetry()V
    .locals 2

    const-string v0, "FingerprintAuthViewAdapter"

    const-string v1, "onAuthRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mTimeoutTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->startAuth()V

    :cond_2
    return-void
.end method

.method public onAuthSuccess()V
    .locals 4

    const-string v0, "FingerprintAuthViewAdapter"

    const-string v1, "onAuthSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mTimeoutTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentFingerprintAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$3;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onAuthSuccess(I)V

    :goto_0
    return-void
.end method

.method public startAuth()V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->createHandlerIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/auth/AuthView;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FingerprintAuthViewAdapter"

    const-string v2, "start fingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mView:Lcom/sec/android/app/sbrowser/auth/AuthView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/auth/AuthView;->showDialogIfRequired()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->mIdentifyHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x3e8

    :goto_0
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
