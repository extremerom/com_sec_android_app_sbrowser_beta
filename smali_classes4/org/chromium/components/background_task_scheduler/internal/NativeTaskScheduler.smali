.class public Lorg/chromium/components/background_task_scheduler/internal/NativeTaskScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method private static cancel(I)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;->cancel(Landroid/content/Context;I)V

    return-void
.end method

.method private static schedule(Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;->schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z

    move-result p0

    return p0
.end method
