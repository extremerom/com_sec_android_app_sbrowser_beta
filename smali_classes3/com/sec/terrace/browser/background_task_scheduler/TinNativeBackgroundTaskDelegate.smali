.class public Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isNativeLoaded()Z
    .locals 0

    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/BrowserStartupController;->isNativeStarted()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getUmaReporter()Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;
    .locals 0

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->getUmaReporter()Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;

    move-result-object p0

    return-object p0
.end method

.method public initializeNativeAsync(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate;->isNativeLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate$1;-><init>(Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p0, p2, v0}, Lorg/chromium/content_public/browser/BrowserStartupController;->startBrowserProcessesAsync(IZZLorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
