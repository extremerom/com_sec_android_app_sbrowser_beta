.class Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->taskFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

.field final synthetic val$needsReschedule:Z


# direct methods
.method public constructor <init>(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

    iput-boolean p2, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->val$needsReschedule:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->d(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BkgrdTaskJS"

    const-string v0, "Tried finishing non-current BackgroundTask."

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->a(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->a(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

    invoke-static {v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->b(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)Landroid/app/job/JobParameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->a(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

    invoke-static {v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->b(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)Landroid/app/job/JobParameters;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->val$needsReschedule:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->getInstance()Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

    invoke-static {v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->b(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)Landroid/app/job/JobParameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;

    invoke-static {p0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->c(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->reportTaskFinished(IJ)V

    return-void
.end method
