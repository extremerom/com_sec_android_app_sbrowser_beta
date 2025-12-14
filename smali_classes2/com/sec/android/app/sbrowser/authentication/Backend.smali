.class abstract Lcom/sec/android/app/sbrowser/authentication/Backend;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNoMatchCount()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getGlobalAttemptsCount()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private increaseNoMatchCount()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseGlobalAttempts()V

    return-void
.end method

.method private isInLockoutState()Z
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOverAllowedNoMatchCount()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->getNoMatchCount()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setLockoutAttemptDeadlineWithTimeoutMs()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->setLockoutAttemptDeadlineWithTimeoutMs(J)J

    return-void
.end method


# virtual methods
.method public abstract authenticate()V
.end method

.method public final authenticateIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->isInLockoutState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->lockOut()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->authenticate()V

    :goto_0
    return-void
.end method

.method public abstract cancelAuthentication()V
.end method

.method public final lockOut()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->cancelAuthentication()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->getNoMatchCount()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getRemainingTimeToEndOfLockout()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onLockOut(II)Z

    return-void
.end method

.method public final lockOutAfterNoMatchCountIncrease()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->increaseNoMatchCount()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->isOverAllowedNoMatchCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->setLockoutAttemptDeadlineWithTimeoutMs()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->lockOut()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final resetNoMatchCount()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    return-void
.end method

.method public final setListener(Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    return-void
.end method

.method public final setLockModel(Lcom/sec/android/app/sbrowser/auth/LockModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-void
.end method
