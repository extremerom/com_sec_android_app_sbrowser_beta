.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastPendingInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;

.field private final mManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->lambda$showNotificationImmediately$0()V

    return-void
.end method

.method private synthetic lambda$showNotificationImmediately$0()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mLastPendingInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->showNotificationImmediately(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mLastPendingInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mTask:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method private showNotificationImmediately(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->showNotification(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/a;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mTask:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "si__ReadAloudNotificationThrottler"

    const-string v0, "Failed to post the throttler task."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mTask:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public clearPendingNotifications()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mLastPendingInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mTask:Ljava/lang/Runnable;

    return-void
.end method

.method public queueNotification(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mLastPendingInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->getNotificationInfo()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->shouldIgnoreNotificationInfo(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mTask:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->showNotificationImmediately(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationThrottler;->mLastPendingInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;

    :goto_1
    return-void
.end method
