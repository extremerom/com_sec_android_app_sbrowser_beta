.class public final Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sBackgroundTaskFactory:Lorg/chromium/components/background_task_scheduler/BackgroundTaskFactory;

.field private static sBackgroundTaskScheduler:Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;


# direct methods
.method public static getBackgroundTaskFromTaskId(I)Lorg/chromium/components/background_task_scheduler/BackgroundTask;
    .locals 1

    sget-object v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;->sBackgroundTaskFactory:Lorg/chromium/components/background_task_scheduler/BackgroundTaskFactory;

    invoke-interface {v0, p0}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskFactory;->getBackgroundTaskFromTaskId(I)Lorg/chromium/components/background_task_scheduler/BackgroundTask;

    move-result-object p0

    return-object p0
.end method

.method public static getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;->sBackgroundTaskScheduler:Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;

    new-instance v1, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;

    invoke-direct {v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;-><init>()V

    invoke-direct {v0, v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;-><init>(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;)V

    sput-object v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;->sBackgroundTaskScheduler:Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    :cond_0
    sget-object v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;->sBackgroundTaskScheduler:Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    return-object v0
.end method

.method public static setBackgroundTaskFactory(Lorg/chromium/components/background_task_scheduler/BackgroundTaskFactory;)V
    .locals 0

    sput-object p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;->sBackgroundTaskFactory:Lorg/chromium/components/background_task_scheduler/BackgroundTaskFactory;

    return-void
.end method
