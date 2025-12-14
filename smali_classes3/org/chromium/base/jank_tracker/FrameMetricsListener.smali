.class public Lorg/chromium/base/jank_tracker/FrameMetricsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBackend:Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;

.field private final mFrameMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

.field private mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVsyncInterval:J


# direct methods
.method public constructor <init>(Lorg/chromium/base/jank_tracker/FrameMetricsStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;-><init>(Lorg/chromium/base/jank_tracker/FrameMetricsListener;I)V

    iput-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->mBackend:Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->mFrameMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    iget-object p1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->mBackend:Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;->startListening()V

    invoke-direct {p0}, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->maybeUpdateRefreshRate()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/base/jank_tracker/FrameMetricsListener;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->maybeUpdateRefreshRate()V

    return-void
.end method

.method private maybeUpdateRefreshRate()V
    .locals 5

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const-wide/32 v1, 0xf4240

    float-to-long v3, v0

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->mVsyncInterval:J

    const-string p0, "FrameMetricsListener.maybeUpdateRefreshRate"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-object p1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v1

    const/16 p1, 0xb

    invoke-virtual {p2, p1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    const-string p1, "onFrameMetricsAvailable"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object p1

    const/16 p3, 0xd

    :try_start_0
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide p2

    cmp-long v0, v1, p2

    if-ltz v0, :cond_1

    sub-long p2, v1, p2

    const-wide/16 v6, 0x3e8

    div-long/2addr p2, v6

    iget-wide v6, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->mVsyncInterval:J

    add-long/2addr p2, v6

    div-long/2addr p2, v6

    long-to-int p2, p2

    :goto_0
    move v3, p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->mFrameMetricsStore:Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->addFrameMeasurement(JIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_2
    return-void

    :goto_2
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p0
.end method

.method public setIsListenerRecording(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
