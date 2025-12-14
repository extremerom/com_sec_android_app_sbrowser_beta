.class public Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static cancel(Landroid/content/Context;I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;->cancel(Landroid/content/Context;I)V

    return-void
.end method

.method public static schedule(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;->getOrigin()Lorg/chromium/components/background_task_scheduler/TaskInfo;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;->schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z

    move-result p0

    return p0
.end method
