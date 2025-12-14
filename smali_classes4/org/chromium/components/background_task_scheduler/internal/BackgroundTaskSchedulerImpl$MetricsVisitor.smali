.class Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$MetricsVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetricsVisitor"
.end annotation


# instance fields
.field private final mTaskId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$MetricsVisitor;->mTaskId:I

    return-void
.end method


# virtual methods
.method public visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;)V
    .locals 1

    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_DISABLE_UMA:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->getInstance()Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;

    move-result-object v0

    iget p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$MetricsVisitor;->mTaskId:I

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->expiresAfterWindowEndTime()Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->reportTaskCreatedAndExpirationState(IZ)V

    return-void
.end method

.method public visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;)V
    .locals 1

    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_DISABLE_UMA:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->getInstance()Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;

    move-result-object v0

    iget p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$MetricsVisitor;->mTaskId:I

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->expiresAfterWindowEndTime()Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->reportTaskCreatedAndExpirationState(IZ)V

    return-void
.end method
