.class Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;,
        Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$MetricsVisitor;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mSchedulerDelegate:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;->mSchedulerDelegate:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;)Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;->mSchedulerDelegate:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;

    return-object p0
.end method


# virtual methods
.method public cancel(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "BackgroundTaskScheduler.cancel"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;->mSchedulerDelegate:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;

    invoke-interface {p0, p1, p2}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;->cancel(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "ignore-background-tasks"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->getTaskId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundTaskScheduler.schedule"

    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v1, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;-><init>(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)V

    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->getTimingInfo()Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;->accept(Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;)V

    invoke-virtual {v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->getSuccess()Z

    move-result p0

    new-instance p1, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$MetricsVisitor;

    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->getTaskId()I

    move-result v1

    invoke-direct {p1, v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$MetricsVisitor;-><init>(I)V

    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->getTimingInfo()Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;->accept(Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method
