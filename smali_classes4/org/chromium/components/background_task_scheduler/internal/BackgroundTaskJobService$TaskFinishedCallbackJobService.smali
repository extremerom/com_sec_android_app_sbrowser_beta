.class Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskFinishedCallbackJobService"
.end annotation


# instance fields
.field private final mBackgroundTask:Lorg/chromium/components/background_task_scheduler/BackgroundTask;

.field private final mJobService:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;

.field private final mParams:Landroid/app/job/JobParameters;

.field private final mTaskStartTimeMs:J


# direct methods
.method public constructor <init>(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;Lorg/chromium/components/background_task_scheduler/BackgroundTask;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mJobService:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;

    iput-object p2, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mBackgroundTask:Lorg/chromium/components/background_task_scheduler/BackgroundTask;

    iput-object p3, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mParams:Landroid/app/job/JobParameters;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mTaskStartTimeMs:J

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mJobService:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)Landroid/app/job/JobParameters;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mParams:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mTaskStartTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;)Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->isCurrentBackgroundTaskForJobId()Z

    move-result p0

    return p0
.end method

.method private isCurrentBackgroundTaskForJobId()Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mJobService:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;->a(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;->mBackgroundTask:Lorg/chromium/components/background_task_scheduler/BackgroundTask;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public taskFinished(Z)V
    .locals 1

    new-instance v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService$1;-><init>(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService$TaskFinishedCallbackJobService;Z)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    return-void
.end method
