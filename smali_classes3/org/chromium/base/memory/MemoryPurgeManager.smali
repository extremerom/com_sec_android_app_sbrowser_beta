.class public Lorg/chromium/base/memory/MemoryPurgeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/memory/MemoryPurgeManager$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BACKGROUND_DURATION_HISTOGRAM_NAME:Ljava/lang/String; = "Android.ApplicationState.TimeInBackgroundBeforeForegroundedAgain"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PURGE_DELAY_MS:J = 0x3a980L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SELF_FREEZE_DELAY_MS:J = 0x493e0L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final sInstance:Lorg/chromium/base/memory/MemoryPurgeManager;


# instance fields
.field private mDelayedPurgeTaskPending:Z

.field private mHasBeenInForeground:Z

.field private mLastBackgroundPeriodStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/base/memory/MemoryPurgeManager;

    invoke-direct {v0}, Lorg/chromium/base/memory/MemoryPurgeManager;-><init>()V

    sput-object v0, Lorg/chromium/base/memory/MemoryPurgeManager;->sInstance:Lorg/chromium/base/memory/MemoryPurgeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/memory/MemoryPurgeManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->lambda$maybePostDelayedPurgingTask$0()V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/base/memory/MemoryPurgeManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->lambda$maybePostDelayedSelfFreezeTask$1()V

    return-void
.end method

.method private delayedPurge(Z)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lorg/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3a980

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lorg/chromium/base/memory/MemoryPurgeManager;->maybePostDelayedPurgingTask(J)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->notifyMemoryPressure()V

    return-void
.end method

.method private delayedPurgeTask(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mDelayedPurgeTaskPending:Z

    invoke-direct {p0, p1}, Lorg/chromium/base/memory/MemoryPurgeManager;->delayedPurge(Z)V

    return-void
.end method

.method public static doDelayedPurge(Z)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/memory/MemoryPurgeManager;->getInstance()Lorg/chromium/base/memory/MemoryPurgeManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->delayedPurgeTask(Z)V

    return-void
.end method

.method private doSelfFreeze()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->notifySelfFreeze()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/base/memory/MemoryPurgeManager;
    .locals 1

    sget-object v0, Lorg/chromium/base/memory/MemoryPurgeManager;->sInstance:Lorg/chromium/base/memory/MemoryPurgeManager;

    return-object v0
.end method

.method private synthetic lambda$maybePostDelayedPurgingTask$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/base/memory/MemoryPurgeManager;->delayedPurgeTask(Z)V

    return-void
.end method

.method private synthetic lambda$maybePostDelayedSelfFreezeTask$1()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->doSelfFreeze()V

    return-void
.end method

.method private maybePostDelayedPurgingTask(J)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mDelayedPurgeTaskPending:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->shouldTrimMemoryOnPreFreeze()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/base/memory/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/memory/c;-><init>(Lorg/chromium/base/memory/MemoryPurgeManager;I)V

    invoke-static {v0, p1, p2}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/base/memory/MemoryPurgeManagerJni;->get()Lorg/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/base/memory/MemoryPurgeManager$Natives;->postDelayedPurgeTaskOnUiThread(J)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mDelayedPurgeTaskPending:Z

    return-void
.end method

.method private maybePostDelayedSelfFreezeTask()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->shouldSelfFreeze()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/base/memory/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/memory/c;-><init>(Lorg/chromium/base/memory/MemoryPurgeManager;I)V

    const-wide/32 v1, 0x493e0

    invoke-static {v0, v1, v2}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private shouldTrimMemoryOnPreFreeze()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/memory/MemoryPurgeManagerJni;->get()Lorg/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lorg/chromium/base/memory/MemoryPurgeManagerJni;->get()Lorg/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/base/memory/MemoryPurgeManager$Natives;->isOnPreFreezeMemoryTrimEnabled()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public notifyMemoryPressure()V
    .locals 0

    const/4 p0, 0x2

    invoke-static {p0}, Lorg/chromium/base/MemoryPressureListener;->notifyMemoryPressure(I)V

    return-void
.end method

.method public notifySelfFreeze()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/memory/MemoryPurgeManagerJni;->get()Lorg/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/MemoryPressureListener;->notifySelfFreeze()V

    return-void
.end method

.method public onApplicationStateChange(I)V
    .locals 7

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_3

    invoke-static {}, Lorg/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    const-wide/32 v0, 0x3a980

    invoke-direct {p0, v0, v1}, Lorg/chromium/base/memory/MemoryPurgeManager;->maybePostDelayedPurgingTask(J)V

    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->maybePostDelayedSelfFreezeTask()V

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mHasBeenInForeground:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    sub-long/2addr v3, v5

    const-string p1, "Android.ApplicationState.TimeInBackgroundBeforeForegroundedAgain"

    invoke-static {p1, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    :cond_2
    iput-boolean v0, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mHasBeenInForeground:Z

    iput-wide v1, p0, Lorg/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    :cond_3
    :goto_0
    return-void
.end method

.method public shouldSelfFreeze()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/memory/MemoryPurgeManagerJni;->get()Lorg/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
