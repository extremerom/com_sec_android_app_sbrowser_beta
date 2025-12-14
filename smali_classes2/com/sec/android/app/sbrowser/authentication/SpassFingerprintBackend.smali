.class Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;
.super Lcom/sec/android/app/sbrowser/authentication/Backend;
.source "SourceFile"


# instance fields
.field private mAuthenticationCallback:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

.field private mScheduler:Landroid/os/Handler;

.field private mShouldRetry:Z

.field private mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

.field private mTimeoutTimer:Landroid/os/CountDownTimer;


# direct methods
.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mShouldRetry:Z

    return p0
.end method

.method private authenticateInternal()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mAuthenticationCallback:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->startIdentify(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mShouldRetry:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->authenticateInternal()V

    return-void
.end method

.method private cancelAuthenticationInternal()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->cancelIdentify()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->cancelAuthenticationInternal()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->retryAuthentication()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->triggerResetMessageEvent()V

    return-void
.end method

.method private retryAuthentication()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private triggerResetMessageEvent()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const-wide/16 v2, 0x640

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mScheduler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public cancelAuthentication()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
