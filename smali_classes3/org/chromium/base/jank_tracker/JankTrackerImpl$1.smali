.class Lorg/chromium/base/jank_tracker/JankTrackerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/base/jank_tracker/JankTrackerImpl;

.field final synthetic val$ref:Ljava/lang/ref/WeakReference;


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl$1;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl$1;->this$0:Lorg/chromium/base/jank_tracker/JankTrackerImpl;

    invoke-static {v1}, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->a(Lorg/chromium/base/jank_tracker/JankTrackerImpl;)Lorg/chromium/base/jank_tracker/JankTrackerStateController;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    invoke-direct {v1}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;-><init>()V

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl$1;->this$0:Lorg/chromium/base/jank_tracker/JankTrackerImpl;

    new-instance v3, Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-direct {v3, v1}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;-><init>(Lorg/chromium/base/jank_tracker/FrameMetricsStore;)V

    invoke-static {v2, v3}, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->d(Lorg/chromium/base/jank_tracker/JankTrackerImpl;Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl$1;->this$0:Lorg/chromium/base/jank_tracker/JankTrackerImpl;

    new-instance v3, Lorg/chromium/base/jank_tracker/JankActivityTracker;

    new-instance v4, Lorg/chromium/base/jank_tracker/FrameMetricsListener;

    invoke-direct {v4, v1}, Lorg/chromium/base/jank_tracker/FrameMetricsListener;-><init>(Lorg/chromium/base/jank_tracker/FrameMetricsStore;)V

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl$1;->this$0:Lorg/chromium/base/jank_tracker/JankTrackerImpl;

    invoke-static {p0}, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->b(Lorg/chromium/base/jank_tracker/JankTrackerImpl;)Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    move-result-object p0

    invoke-direct {v3, v0, v4, p0}, Lorg/chromium/base/jank_tracker/JankActivityTracker;-><init>(Landroid/app/Activity;Lorg/chromium/base/jank_tracker/FrameMetricsListener;Lorg/chromium/base/jank_tracker/JankReportingScheduler;)V

    invoke-static {v2, v3}, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->c(Lorg/chromium/base/jank_tracker/JankTrackerImpl;Lorg/chromium/base/jank_tracker/JankTrackerStateController;)V

    :cond_2
    :goto_0
    return-void
.end method
