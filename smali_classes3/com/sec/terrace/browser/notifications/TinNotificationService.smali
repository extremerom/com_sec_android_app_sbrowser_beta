.class public Lcom/sec/terrace/browser/notifications/TinNotificationService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/notifications/TinNotificationService$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TinNotificationService"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationService;->lambda$onHandleIntent$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static dispatchIntentOnUIThread(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/chromium/content_public/browser/BrowserStartupController;->startBrowserProcessesSync(IZZ)V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->warmUpSharedPrefs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->dispatchNotificationEvent(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/terrace/browser/notifications/TinNotificationService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to dispatch the notification event to UIManager."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
    :try_end_2
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to start the browser process."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    :goto_1
    return-void
.end method

.method private static synthetic lambda$onHandleIntent$0(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationService;->dispatchIntentOnUIThread(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    sget-object p0, Lcom/sec/terrace/browser/notifications/TinNotificationService;->TAG:Ljava/lang/String;

    const-string v0, "onHandleIntent"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "Returning on null intent"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "notification_persistent_id"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "notification_type"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "notification_info_origin"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x7

    invoke-static {p1, p0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
