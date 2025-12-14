.class public Lorg/chromium/base/jank_tracker/FrameMetricsStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mMaxTimestamp:J

.field private final mNumMissedVsyncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingStartTimestampNs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/chromium/base/jank_tracker/JankScenario;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/chromium/base/jank_tracker/JankScenario;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

.field private final mTimestampsNs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTotalDurationsNs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mMaxTimestamp:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mPendingStartTimestampNs:Ljava/util/HashMap;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private convertArraysToJankMetrics(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/chromium/base/jank_tracker/JankMetrics;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/chromium/base/jank_tracker/JankMetrics;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [I

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance p3, Lorg/chromium/base/jank_tracker/JankMetrics;

    invoke-direct {p3, p0, p1, p2}, Lorg/chromium/base/jank_tracker/JankMetrics;-><init>([J[J[I)V

    return-object p3
.end method

.method private findFirstUsedTimestamp()J
    .locals 5

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private removeUnusedFrames()V
    .locals 7

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "removeUnusedFrames"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->findFirstUsedTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    sget-boolean p0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Timestamp for tracked scenario not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static scenarioToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid scenario value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "CombinedWebviewScrolling"

    return-object p0

    :pswitch_1
    const-string p0, "WebviewScrolling"

    return-object p0

    :pswitch_2
    const-string p0, "FeedScrolling"

    return-object p0

    :pswitch_3
    const-string p0, "StartSurfaceTabSwitcher"

    return-object p0

    :pswitch_4
    const-string p0, "StartSurfaceHomepage"

    return-object p0

    :pswitch_5
    const-string p0, "OpenLinkInNewTab"

    return-object p0

    :pswitch_6
    const-string p0, "TabSwitcher"

    return-object p0

    :pswitch_7
    const-string p0, "Startup"

    return-object p0

    :pswitch_8
    const-string p0, "NewTabPage"

    return-object p0

    :pswitch_9
    const-string p0, "OmniboxFocus"

    return-object p0

    :pswitch_a
    const-string p0, "Total"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addFrameMeasurement(JIJ)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-wide p4, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mMaxTimestamp:J

    return-void
.end method

.method public hasReceivedMetricsPast(J)Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    iget-wide v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mMaxTimestamp:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initialize()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {p0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->resetThreadId()V

    return-void
.end method

.method public startTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)V
    .locals 6

    const-string v0, "JankCUJ:"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startTrackingScenario: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v2

    invoke-static {v2}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->scenarioToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mPendingStartTimestampNs:Ljava/util/HashMap;

    invoke-static {}, Lorg/chromium/base/TimeUtils;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->scenarioToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0x12b1702fd756068L

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/TraceEvent;->startAsync(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_2
    return-void

    :goto_0
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public stopTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)Lorg/chromium/base/jank_tracker/JankMetrics;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->stopTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;J)Lorg/chromium/base/jank_tracker/JankMetrics;

    move-result-object p0

    return-object p0
.end method

.method public stopTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;J)Lorg/chromium/base/jank_tracker/JankMetrics;
    .locals 6

    const-string v0, "JankCUJ:"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finishTrackingScenario: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v2

    invoke-static {v2}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->scenarioToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->scenarioToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0x12b1702fd756068L

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/TraceEvent;->finishAsync(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->removeUnusedFrames()V

    new-instance p0, Lorg/chromium/base/jank_tracker/JankMetrics;

    invoke-direct {p0}, Lorg/chromium/base/jank_tracker/JankMetrics;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    new-instance p0, Lorg/chromium/base/jank_tracker/JankMetrics;

    invoke-direct {p0}, Lorg/chromium/base/jank_tracker/JankMetrics;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_2
    return-object p0

    :cond_3
    :try_start_2
    iget-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_5

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-gt v2, v0, :cond_5

    const-string v2, "FrameMetricsStore invalid endScenarioTimeNs"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_5
    iget-object v3, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v3, v4, v0}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->convertArraysToJankMetrics(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/chromium/base/jank_tracker/JankMetrics;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->removeUnusedFrames()V

    iget-object v2, p0, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->mPendingStartTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-lez p2, :cond_6

    invoke-virtual {p0, p1}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->startTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_7
    return-object v0

    :goto_1
    if-eqz v1, :cond_8

    :try_start_3
    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw p0
.end method
