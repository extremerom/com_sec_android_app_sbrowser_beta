.class public Lorg/chromium/base/jank_tracker/JankTrackerStateController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field protected final mFrameMetricsListener:Lorg/chromium/base/jank_tracker/FrameMetricsListener;

.field protected final mReportingScheduler:Lorg/chromium/base/jank_tracker/JankReportingScheduler;


# direct methods
.method public constructor <init>(Lorg/chromium/base/jank_tracker/FrameMetricsListener;Lorg/chromium/base/jank_tracker/JankReportingScheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Lorg/chromium/base/jank_tracker/FrameMetricsListener;

    iput-object p2, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mReportingScheduler:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    return-void
.end method

.method public startMetricCollection(Landroid/view/Window;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Lorg/chromium/base/jank_tracker/FrameMetricsListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->setIsListenerRecording(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Lorg/chromium/base/jank_tracker/FrameMetricsListener;

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mReportingScheduler:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-virtual {p0}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->getOrCreateHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public startPeriodicReporting()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mReportingScheduler:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-virtual {p0}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->startReportingPeriodicMetrics()V

    return-void
.end method

.method public stopMetricCollection(Landroid/view/Window;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Lorg/chromium/base/jank_tracker/FrameMetricsListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->setIsListenerRecording(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Lorg/chromium/base/jank_tracker/FrameMetricsListener;

    invoke-virtual {p1, v0}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Could not remove listener %s from window %s"

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Lorg/chromium/base/jank_tracker/FrameMetricsListener;

    const-string v1, "JankTracker"

    invoke-static {v1, v0, p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopPeriodicReporting()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->mReportingScheduler:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-virtual {p0}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->stopReportingPeriodicMetrics()V

    return-void
.end method
