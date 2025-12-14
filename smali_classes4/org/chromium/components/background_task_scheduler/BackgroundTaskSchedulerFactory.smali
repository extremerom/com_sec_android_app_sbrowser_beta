.class public final Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sExternalUmaForTesting:Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;


# direct methods
.method public static getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;
    .locals 1

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;->getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    move-result-object v0

    return-object v0
.end method

.method public static getUmaReporter()Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;
    .locals 1

    sget-object v0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->sExternalUmaForTesting:Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->getInstance()Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static setBackgroundTaskFactory(Lorg/chromium/components/background_task_scheduler/BackgroundTaskFactory;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerFactoryInternal;->setBackgroundTaskFactory(Lorg/chromium/components/background_task_scheduler/BackgroundTaskFactory;)V

    return-void
.end method
