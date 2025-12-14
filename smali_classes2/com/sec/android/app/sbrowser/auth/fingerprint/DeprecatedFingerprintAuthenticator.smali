.class public Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# instance fields
.field private mAuthCallback:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

.field private mEventStatus:J

.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

.field private mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;


# direct methods
.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mEventStatus:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/samsung/android/sdk/pass/SpassFingerprint;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mEventStatus:J

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f140697

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelAuth()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->cancelIdentify()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelIdentify : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeprecatedFingerprintAuthenticator"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 2

    const-string p1, "DeprecatedFingerprintAuthenticator"

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    :try_start_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mSpassFingerprint:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mAuthCallback:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->startIdentify(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/pass/SpassInvalidStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "IllegalStateException: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setDefaultLockoutAttemptDeadlineWithTimeoutMs()J

    move-result-wide p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthLockout(J)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "startIdentify exception : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
