.class public Lorg/chromium/components/background_task_scheduler/internal/MockBackgroundTaskSchedulerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;


# instance fields
.field private mCanceledTaskId:I

.field private mScheduledTaskInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo;


# virtual methods
.method public cancel(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/components/background_task_scheduler/internal/MockBackgroundTaskSchedulerDelegate;->mCanceledTaskId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/internal/MockBackgroundTaskSchedulerDelegate;->mScheduledTaskInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo;

    return-void
.end method

.method public schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z
    .locals 0

    iput-object p2, p0, Lorg/chromium/components/background_task_scheduler/internal/MockBackgroundTaskSchedulerDelegate;->mScheduledTaskInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo;

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/components/background_task_scheduler/internal/MockBackgroundTaskSchedulerDelegate;->mCanceledTaskId:I

    const/4 p0, 0x1

    return p0
.end method
