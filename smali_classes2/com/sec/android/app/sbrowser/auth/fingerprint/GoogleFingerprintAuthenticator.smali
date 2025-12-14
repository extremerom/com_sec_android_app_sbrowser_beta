.class public Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mAuthCancelSignal:Landroid/os/CancellationSignal;

.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

.field private mManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method


# virtual methods
.method public cancelAuth()V
    .locals 2

    const-string v0, "cancelAuth"

    const-string v1, "GoogleFingerprintAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    const-string v0, "Cancel Google Fingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationError : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleFingerprintAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    const/16 p1, 0x68

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    const/16 p1, 0x69

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->adjustIncorrectAttemptsForLockout(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    const/16 p1, 0x6a

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    const/16 p1, 0x66

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "GoogleFingerprintAuthenticator"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseIncorrectAttempts(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationHelp : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleFingerprintAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    const/16 p1, 0x67

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    const/16 p1, 0x65

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    const-string p1, "GoogleFingerprintAuthenticator"

    const-string v0, "onAuthenticationSucceeded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 7

    const-string p1, "GoogleFingerprintAuthenticator"

    const-string v0, "startAuth"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/GoogleFingerprintAuthenticator;->mManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
