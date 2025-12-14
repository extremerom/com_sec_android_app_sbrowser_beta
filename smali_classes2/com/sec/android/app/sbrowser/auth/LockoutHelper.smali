.class public Lcom/sec/android/app/sbrowser/auth/LockoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;
    }
.end annotation


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mListener:Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;

.field private mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mView:Landroid/widget/TextView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;)Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mListener:Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->getTryAgainMessage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTryAgainMessage(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    long-to-int v1, v1

    if-lez v1, :cond_2

    const/16 v2, 0x3c

    if-ne p1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v0, 0x7f1400ed

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1400ee

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/high16 v2, 0x7f120000

    invoke-virtual {p0, v2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public handleAttemptLockout(J)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAttemptLockout : elapsedRealtimeDeadLine = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockoutHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mListener:Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;->onAttemptLockout()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;

    sub-long v5, p1, v0

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;-><init>(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;JJ)V

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public resetAttemptLockout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->mListener:Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;

    return-void
.end method
