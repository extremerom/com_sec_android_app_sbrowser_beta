.class Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->checkPassword(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearPassword()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->clearPassword()V

    return-void
.end method

.method public hasPassword()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->hasPassword()Z

    move-result p0

    return p0
.end method

.method public resetIncorrectAttempts()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    return-void
.end method

.method public savePassword(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->savePassword(Ljava/lang/String;)V

    return-void
.end method

.method public setLockoutAttemptDeadlineWithTimeoutMs(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLockoutAttemptDeadlineWithTimeoutMs(J)J

    return-void
.end method
