.class Lorg/chromium/base/jank_tracker/JankReportingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsStartingTracking:Z

.field private final mJankEndScenarioTime:Lorg/chromium/base/jank_tracker/JankEndScenarioTime;

.field private final mMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

.field private final mScenario:Lorg/chromium/base/jank_tracker/JankScenario;


# direct methods
.method public constructor <init>(Lorg/chromium/base/jank_tracker/FrameMetricsStore;Lorg/chromium/base/jank_tracker/JankScenario;ZLandroid/os/Handler;Lorg/chromium/base/jank_tracker/JankEndScenarioTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    iput-object p2, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mScenario:Lorg/chromium/base/jank_tracker/JankScenario;

    iput-boolean p3, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mIsStartingTracking:Z

    iput-object p4, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Lorg/chromium/base/jank_tracker/JankEndScenarioTime;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/JankEndScenarioTime;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Lorg/chromium/base/jank_tracker/JankEndScenarioTime;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/FrameMetricsStore;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/JankScenario;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mScenario:Lorg/chromium/base/jank_tracker/JankScenario;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartingScenario:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mIsStartingTracking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Scenario:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mScenario:Lorg/chromium/base/jank_tracker/JankScenario;

    invoke-virtual {v1}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartingOrStoppingJankScenario"

    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mIsStartingTracking:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    if-nez v1, :cond_1

    const-string p0, "StartTrackingScenario metrics store null"

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mScenario:Lorg/chromium/base/jank_tracker/JankScenario;

    invoke-virtual {v1, p0}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->startTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Lorg/chromium/base/jank_tracker/JankEndScenarioTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    iget-wide v4, v1, Lorg/chromium/base/jank_tracker/JankEndScenarioTime;->endScenarioTimeNs:J

    invoke-virtual {v3, v4, v5}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->hasReceivedMetricsPast(J)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mHandler:Landroid/os/Handler;

    new-instance v3, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;

    invoke-direct {v3, p0, v2}, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;-><init>(Lorg/chromium/base/jank_tracker/JankReportingRunnable;I)V

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Lorg/chromium/base/jank_tracker/JankEndScenarioTime;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v1, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;

    invoke-direct {v1, p0, v2}, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;-><init>(Lorg/chromium/base/jank_tracker/JankReportingRunnable;I)V

    invoke-virtual {v1}, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_6
    return-void

    :goto_2
    if-eqz v0, :cond_7

    :try_start_3
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw p0
.end method
