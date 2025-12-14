.class public Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mClock:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;

.field private final mCurrentTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/components/background_task_scheduler/BackgroundTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Lf1/g;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->mClock:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->mCurrentTasks:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->mCurrentTasks:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;->getBackgroundTaskFromTaskId(I)Lorg/chromium/components/background_task_scheduler/BackgroundTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BkgrdTaskJS"

    const-string v0, "Failed to start task. Could not instantiate BackgroundTask class."

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;->getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    move-result-object p0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;->cancel(Landroid/content/Context;I)V

    return v1

    :cond_0
    iget-object v2, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->mClock:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;

    invoke-interface {v2}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->didTaskExpire(Landroid/app/job/JobParameters;J)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->mCurrentTasks:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->getTaskParametersFromJobParameters(Landroid/app/job/JobParameters;)Lorg/chromium/components/background_task_scheduler/TaskParameters;

    move-result-object v1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

    invoke-direct {v3, p0, v0, p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;-><init>(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;Lorg/chromium/components/background_task_scheduler/BackgroundTask;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v2, v1, v3}, Lorg/chromium/components/background_task_scheduler/BackgroundTask;->onStartTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->mCurrentTasks:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->mCurrentTasks:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to stop job, because job with job id "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BkgrdTaskJS"

    invoke-static {p1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->mCurrentTasks:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/background_task_scheduler/BackgroundTask;

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->getTaskParametersFromJobParameters(Landroid/app/job/JobParameters;)Lorg/chromium/components/background_task_scheduler/TaskParameters;

    move-result-object v1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/chromium/components/background_task_scheduler/BackgroundTask;->onStopTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z

    move-result v0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->mCurrentTasks:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method
