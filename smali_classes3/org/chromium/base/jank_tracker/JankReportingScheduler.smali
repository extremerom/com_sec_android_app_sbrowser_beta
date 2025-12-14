.class public Lorg/chromium/base/jank_tracker/JankReportingScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mFrameMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

.field private final mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPeriodicMetricReporter:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/chromium/base/jank_tracker/FrameMetricsStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$2;

    invoke-direct {v0, p0}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$2;-><init>(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)V

    iput-object v0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mFrameMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$1;-><init>(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Lorg/chromium/base/jank_tracker/FrameMetricsStore;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mFrameMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public finishTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->finishTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;J)V

    return-void
.end method

.method public finishTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;J)V
    .locals 0

    invoke-static {p2, p3}, Lorg/chromium/base/jank_tracker/JankEndScenarioTime;->endAt(J)Lorg/chromium/base/jank_tracker/JankEndScenarioTime;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->finishTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;Lorg/chromium/base/jank_tracker/JankEndScenarioTime;)V

    return-void
.end method

.method public finishTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;Lorg/chromium/base/jank_tracker/JankEndScenarioTime;)V
    .locals 7

    new-instance v6, Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mFrameMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    const/4 v3, 0x0

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object v4

    move-object v0, v6

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;-><init>(Lorg/chromium/base/jank_tracker/FrameMetricsStore;Lorg/chromium/base/jank_tracker/JankScenario;ZLandroid/os/Handler;Lorg/chromium/base/jank_tracker/JankEndScenarioTime;)V

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getOrCreateHandler()Landroid/os/Handler;
    .locals 0

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public startReportingPeriodicMetrics()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->PERIODIC_REPORTING:Lorg/chromium/base/jank_tracker/JankScenario;

    invoke-virtual {p0, v0}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->startTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)V

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)V
    .locals 8

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mFrameMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;-><init>(Lorg/chromium/base/jank_tracker/FrameMetricsStore;Lorg/chromium/base/jank_tracker/JankScenario;ZLandroid/os/Handler;Lorg/chromium/base/jank_tracker/JankEndScenarioTime;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopReportingPeriodicMetrics()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
