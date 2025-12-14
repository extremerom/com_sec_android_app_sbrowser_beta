.class public abstract Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/BackgroundTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$StartBeforeNativeResult;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDelegate:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;

.field private mRunningInMinimalBrowserMode:Z

.field protected mTaskId:I

.field private mTaskStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mDelegate:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mRunningInMinimalBrowserMode:Z

    return p0
.end method

.method private buildRescheduleRunnable(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$3;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$3;-><init>(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V

    return-object v0
.end method

.method private buildStartWithNativeRunnable(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;-><init>(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V

    return-object v0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mTaskStopped:Z

    return p0
.end method

.method public static bridge synthetic d(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->getUmaReporter()Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;

    move-result-object p0

    return-object p0
.end method

.method private getUmaReporter()Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mDelegate:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;

    invoke-interface {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;->getUmaReporter()Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;

    move-result-object p0

    return-object p0
.end method

.method private isNativeLoadedInFullBrowserMode()Z
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->getBrowserStartupController()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/BrowserStartupController;->isFullBrowserStarted()Z

    move-result p0

    return p0
.end method

.method private isNativeLoadedInMinimalBrowserMode()Z
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->getBrowserStartupController()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/BrowserStartupController;->isRunningInMinimalBrowserMode()Z

    move-result p0

    return p0
.end method

.method private final runWithNative(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->isNativeLoadedInFullBrowserMode()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mRunningInMinimalBrowserMode:Z

    invoke-static {v1, p1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->isNativeLoadedInMinimalBrowserMode()Z

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->supportsMinimalBrowser()Z

    move-result v2

    iput-boolean v2, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mRunningInMinimalBrowserMode:Z

    new-instance v2, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;-><init>(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getBrowserStartupController()Lorg/chromium/content_public/browser/BrowserStartupController;
    .locals 0

    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object p0

    return-object p0
.end method

.method public final onStartTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Z
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskParameters;->getTaskId()I

    move-result v0

    iput v0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mTaskId:I

    new-instance v0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$1;

    invoke-direct {v0, p0, p3}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$1;-><init>(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->onStartTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x7

    invoke-direct {p0, p3}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->buildRescheduleRunnable(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return v2

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->buildStartWithNativeRunnable(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, v0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->buildRescheduleRunnable(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->runWithNative(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return v2
.end method

.method public abstract onStartTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)I
.end method

.method public abstract onStartTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
.end method

.method public final onStopTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mTaskStopped:Z

    invoke-direct {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->isNativeLoadedInFullBrowserMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->onStopTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->onStopTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z

    move-result p0

    return p0
.end method

.method public abstract onStopTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
.end method

.method public abstract onStopTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
.end method

.method public setDelegate(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mDelegate:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;

    return-void
.end method

.method public supportsMinimalBrowser()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
