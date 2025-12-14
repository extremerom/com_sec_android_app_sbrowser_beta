.class Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;
.super Lcom/sec/android/app/sbrowser/authentication/Backend;
.source "SourceFile"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mCancelSignal:Landroid/os/CancellationSignal;

.field private mManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mScheduler:Landroid/os/Handler;

.field private mTimeoutTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;-><init>()V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$1;-><init>(Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mScheduler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$2;

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0xea60

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$2;-><init>(Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$3;-><init>(Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->triggerResetMessageEvent()V

    return-void
.end method

.method private triggerResetMessageEvent()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const-wide/16 v2, 0x640

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mCancelSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mCancelSignal:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public cancelAuthentication()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mCancelSignal:Landroid/os/CancellationSignal;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
