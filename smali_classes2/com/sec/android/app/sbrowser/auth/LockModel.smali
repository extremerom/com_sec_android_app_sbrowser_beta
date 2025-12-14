.class public Lcom/sec/android/app/sbrowser/auth/LockModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper$Delegate;


# instance fields
.field private final mDatabaseHelper:Lcom/sec/android/app/sbrowser/auth/LockDatabaseHelper;

.field private final mPasswordHelper:Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/LockDatabaseHelper;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/auth/LockDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mDatabaseHelper:Lcom/sec/android/app/sbrowser/auth/LockDatabaseHelper;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;

    invoke-direct {v1, v0, p0}, Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper$Delegate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mPasswordHelper:Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    return-void
.end method

.method private getFailLimitForTimeout()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method private getFailLimitToLockBiometrics()I
    .locals 0

    const/16 p0, 0x32

    return p0
.end method

.method private getFailedAttemptTimeoutMs()J
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "lockscreen.currentlockouttimeout"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getGlobalAttemptsCount()J

    move-result-wide v3

    long-to-int p0, v3

    const/4 v0, 0x5

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x7530

    :goto_0
    return-wide v1
.end method

.method private getLockoutTimeoutMs()J
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "DefaultPassword"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->unlockViaPassword(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getFailedAttemptTimeoutMs()J

    move-result-wide v0

    return-wide v0
.end method

.method private resetDeadline()J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLockoutAttemptDeadlineWithTimeoutMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private setGlobalAttempts(J)V
    .locals 1

    const-string v0, "lockscreen.globalunlockattempts"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLong(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public adjustIncorrectAttemptsForLockout(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getGlobalAttemptsCount()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getFailLimitForTimeout()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getFailLimitForTimeout()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setGlobalAttempts(J)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseIncorrectAttempts(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    return-void
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mPasswordHelper:Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;->checkPassword(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseGlobalAttempts()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getGlobalAttemptsCount()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getFailLimitForTimeout()I

    move-result v1

    rem-int v1, v0, v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLockoutAttemptDeadline(I)J

    :cond_1
    :goto_0
    return p1
.end method

.method public clearPassword()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToNone()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setPreviousStatus(Z)V

    return-void
.end method

.method public getGlobalAttemptsCount()J
    .locals 3

    const-string v0, "lockscreen.globalunlockattempts"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 9

    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getFailedAttemptTimeoutMs()J

    move-result-wide v7

    add-long/2addr v7, v5

    cmp-long v0, v3, v7

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetDeadline()J

    move-result-wide v0

    return-wide v0

    :cond_0
    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLockoutAttemptDeadlineWithTimeoutMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v3
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mDatabaseHelper:Lcom/sec/android/app/sbrowser/auth/LockDatabaseHelper;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockDatabaseHelper;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public getRemainingTimeToEndOfLockout()J
    .locals 4

    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public hasPassword()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPasswordAuth()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mPasswordHelper:Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;->hasPassword(I)Z

    move-result p0

    return p0
.end method

.method public increaseGlobalAttempts()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getGlobalAttemptsCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setGlobalAttempts(J)V

    return-void
.end method

.method public increaseIncorrectAttempts(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseGlobalAttempts()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getGlobalAttemptsCount()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getFailLimitToLockBiometrics()I

    move-result v1

    const-string v2, "LockModel"

    if-lt v0, v1, :cond_0

    const-string p0, "Biometrics auth is locked for 50 times failure."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthBlock()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getFailLimitForTimeout()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    const-string v0, "Fingerprint identification failed 5 times."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setDefaultLockoutAttemptDeadlineWithTimeoutMs()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthLockout(J)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthFail()V

    :goto_0
    return-void
.end method

.method public resetIncorrectAttempts()V
    .locals 3

    const-string v0, "lockscreen.globalunlockattempts"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLong(Ljava/lang/String;J)V

    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLong(Ljava/lang/String;J)V

    const-string v0, "lockscreen.currentlockouttimeout"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public savePassword(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Trying to store the password into file now"

    const-string v1, "LockModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mPasswordHelper:Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/auth/LockPasswordHelper;->setPassword(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setPreviousStatus(Z)V

    const-string p0, "previous secret mode status set to Non-SDP"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string p1, "Unable to save lock password "

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to save lock password, hash can be null"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void
.end method

.method public setDefaultLockoutAttemptDeadlineWithTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLockoutAttemptDeadlineWithTimeoutMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setLockoutAttemptDeadline(I)J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getFailedAttemptTimeoutMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-string p1, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLong(Ljava/lang/String;J)V

    return-wide v0
.end method

.method public setLockoutAttemptDeadlineWithTimeoutMs(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_0
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLong(Ljava/lang/String;J)V

    const-string v2, "lockscreen.currentlockouttimeout"

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLong(Ljava/lang/String;J)V

    return-wide v0
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/LockModel;->mDatabaseHelper:Lcom/sec/android/app/sbrowser/auth/LockDatabaseHelper;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/LockDatabaseHelper;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
