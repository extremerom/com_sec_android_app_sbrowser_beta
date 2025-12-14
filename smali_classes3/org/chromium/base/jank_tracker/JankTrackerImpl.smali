.class public Lorg/chromium/base/jank_tracker/JankTrackerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/jank_tracker/JankTracker;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final IS_TRACKING_ENABLED:Z


# instance fields
.field private mController:Lorg/chromium/base/jank_tracker/JankTrackerStateController;

.field private mReportingScheduler:Lorg/chromium/base/jank_tracker/JankReportingScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->IS_TRACKING_ENABLED:Z

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/base/jank_tracker/JankTrackerImpl;)Lorg/chromium/base/jank_tracker/JankTrackerStateController;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->mController:Lorg/chromium/base/jank_tracker/JankTrackerStateController;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/base/jank_tracker/JankTrackerImpl;)Lorg/chromium/base/jank_tracker/JankReportingScheduler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->mReportingScheduler:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/base/jank_tracker/JankTrackerImpl;Lorg/chromium/base/jank_tracker/JankTrackerStateController;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->constructInternalFinal(Lorg/chromium/base/jank_tracker/JankTrackerStateController;)V

    return-void
.end method

.method private constructInternalFinal(Lorg/chromium/base/jank_tracker/JankTrackerStateController;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->mController:Lorg/chromium/base/jank_tracker/JankTrackerStateController;

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/JankTrackerStateController;->initialize()V

    return-void
.end method

.method private constructInternalPreController(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Z
    .locals 1
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNullIf;
    .end annotation

    sget-boolean v0, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->IS_TRACKING_ENABLED:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->mReportingScheduler:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->mController:Lorg/chromium/base/jank_tracker/JankTrackerStateController;

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->mReportingScheduler:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic d(Lorg/chromium/base/jank_tracker/JankTrackerImpl;Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/jank_tracker/JankTrackerImpl;->constructInternalPreController(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Z

    move-result p0

    return p0
.end method
