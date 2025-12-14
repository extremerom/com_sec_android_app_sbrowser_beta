.class Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/jank_tracker/JankReportingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinalReportingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;


# direct methods
.method private constructor <init>(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/base/jank_tracker/JankReportingRunnable;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;-><init>(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v0}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->c(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/JankScenario;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v0

    const-string v1, "ReportingCUJScenarioData"

    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;I)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v1}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->a(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/JankEndScenarioTime;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v1}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->b(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v2}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->c(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/JankScenario;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->stopTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)Lorg/chromium/base/jank_tracker/JankMetrics;

    move-result-object v1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v1}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->b(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v2}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->c(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/JankScenario;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v3}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->a(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/JankEndScenarioTime;

    move-result-object v3

    iget-wide v3, v3, Lorg/chromium/base/jank_tracker/JankEndScenarioTime;->endScenarioTimeNs:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->stopTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;J)Lorg/chromium/base/jank_tracker/JankMetrics;

    move-result-object v1

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    iget-object v1, v2, Lorg/chromium/base/jank_tracker/JankMetrics;->timestampsNs:[J

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    aget-wide v3, v1, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-wide v7, v1, v7

    div-long/2addr v7, v5

    iget-object v1, v2, Lorg/chromium/base/jank_tracker/JankMetrics;->durationsNs:[J

    array-length v9, v1

    add-int/lit8 v9, v9, -0x1

    aget-wide v9, v1, v9

    div-long/2addr v9, v5

    sub-long/2addr v7, v3

    add-long v5, v7, v9

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankMetricUMARecorderJni;->get()Lorg/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Lorg/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {p0}, Lorg/chromium/base/jank_tracker/JankReportingRunnable;->c(Lorg/chromium/base/jank_tracker/JankReportingRunnable;)Lorg/chromium/base/jank_tracker/JankScenario;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/chromium/base/jank_tracker/JankMetricUMARecorder;->recordJankMetricsToUMA(Lorg/chromium/base/jank_tracker/JankMetrics;JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_2
    return-void

    :cond_3
    :goto_2
    :try_start_1
    const-string p0, "no metrics"

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_4
    return-void

    :goto_3
    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p0
.end method
