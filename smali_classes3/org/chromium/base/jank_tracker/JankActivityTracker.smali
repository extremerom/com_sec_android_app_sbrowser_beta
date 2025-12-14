.class Lorg/chromium/base/jank_tracker/JankActivityTracker;
.super Lorg/chromium/base/jank_tracker/JankTrackerStateController;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mDestroyChecker:Lorg/chromium/base/lifetime/DestroyChecker;

.field private final mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/base/jank_tracker/FrameMetricsListener;Lorg/chromium/base/jank_tracker/JankReportingScheduler;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/chromium/base/jank_tracker/JankTrackerStateController;-><init>(Lorg/chromium/base/jank_tracker/FrameMetricsListener;Lorg/chromium/base/jank_tracker/JankReportingScheduler;)V

    new-instance p2, Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {p2}, Lorg/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object p2, p0, Lorg/chromium/base/jank_tracker/JankActivityTracker;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    new-instance p2, Lorg/chromium/base/lifetime/DestroyChecker;

    invoke-direct {p2}, Lorg/chromium/base/lifetime/DestroyChecker;-><init>()V

    iput-object p2, p0, Lorg/chromium/base/jank_tracker/JankActivityTracker;->mDestroyChecker:Lorg/chromium/base/lifetime/DestroyChecker;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/chromium/base/jank_tracker/JankActivityTracker;->mActivityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private assertValidState()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankActivityTracker;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankActivityTracker;->mDestroyChecker:Lorg/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {p0}, Lorg/chromium/base/lifetime/DestroyChecker;->checkNotDestroyed()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/base/jank_tracker/JankActivityTracker;->assertValidState()V

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankActivityTracker;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/base/jank_tracker/JankActivityTracker;->onActivityStateChange(Landroid/app/Activity;I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->startMetricCollection(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/base/jank_tracker/JankActivityTracker;->assertValidState()V

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->stopPeriodicReporting()V

    invoke-virtual {p0, v0}, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->stopMetricCollection(Landroid/view/Window;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->startPeriodicReporting()V

    invoke-virtual {p0, v0}, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->stopMetricCollection(Landroid/view/Window;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->startPeriodicReporting()V

    invoke-virtual {p0, v0}, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->startMetricCollection(Landroid/view/Window;)V

    :goto_0
    return-void
.end method
