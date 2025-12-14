.class Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JobInfoBuilderVisitor"
.end annotation


# instance fields
.field private final mBuilder:Landroid/app/job/JobInfo$Builder;

.field private final mJobExtras:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/app/job/JobInfo$Builder;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mBuilder:Landroid/app/job/JobInfo$Builder;

    iput-object p2, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mJobExtras:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public getBuilder()Landroid/app/job/JobInfo$Builder;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mBuilder:Landroid/app/job/JobInfo$Builder;

    return-object p0
.end method

.method public visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;)V
    .locals 5

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->expiresAfterWindowEndTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mJobExtras:Landroid/os/PersistableBundle;

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->a()Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "_background_task_schedule_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mJobExtras:Landroid/os/PersistableBundle;

    const-string v1, "_background_task_end_time"

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->getWindowEndTimeMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mBuilder:Landroid/app/job/JobInfo$Builder;

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mJobExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->hasWindowStartTimeConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->getWindowStartTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    :cond_1
    iget-object v2, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mBuilder:Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->hasWindowEndTimeConstraint()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->getWindowEndTimeMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->expiresAfterWindowEndTime()Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    :cond_3
    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mBuilder:Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    :cond_4
    return-void
.end method

.method public visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;)V
    .locals 4

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->expiresAfterWindowEndTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mJobExtras:Landroid/os/PersistableBundle;

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->a()Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "_background_task_schedule_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mJobExtras:Landroid/os/PersistableBundle;

    const-string v1, "_background_task_interval_time"

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->getIntervalMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->hasFlex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mJobExtras:Landroid/os/PersistableBundle;

    const-string v1, "_background_task_flex_time"

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->getFlexMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mBuilder:Landroid/app/job/JobInfo$Builder;

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mJobExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->hasFlex()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mBuilder:Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->getIntervalMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->getFlexMs()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    return-void

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->mBuilder:Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->getIntervalMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    return-void
.end method
