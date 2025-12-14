.class Lorg/chromium/base/jank_tracker/JankReportingScheduler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/jank_tracker/JankReportingScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/jank_tracker/JankReportingScheduler;


# direct methods
.method public constructor <init>(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    sget-object v1, Lorg/chromium/base/jank_tracker/JankScenario;->PERIODIC_REPORTING:Lorg/chromium/base/jank_tracker/JankScenario;

    invoke-virtual {v0, v1}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->finishTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)V

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-static {v0}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->b(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-virtual {v0, v1}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->startTrackingScenario(Lorg/chromium/base/jank_tracker/JankScenario;)V

    invoke-static {}, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-static {p0}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->c(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
