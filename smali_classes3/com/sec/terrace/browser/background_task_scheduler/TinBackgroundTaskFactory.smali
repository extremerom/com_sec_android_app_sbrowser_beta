.class Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/BackgroundTaskFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;->mDelegate:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;

    return-void
.end method

.method private static create(Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;)Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;->sInstance:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;-><init>(Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;)V

    sput-object v0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;->sInstance:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;

    :cond_0
    sget-object p0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;->sInstance:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;

    return-object p0
.end method

.method private createBackgroundTaskFromTaskId(I)Lorg/chromium/components/background_task_scheduler/BackgroundTask;
    .locals 1

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x66

    if-eq p1, v0, :cond_3

    const/16 v0, 0x68

    if-eq p1, v0, :cond_2

    const/16 v0, 0x69

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;->mDelegate:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;->getBackgroundTaskFromTaskId(I)Lorg/chromium/components/background_task_scheduler/BackgroundTask;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/sec/terrace/browser/background_sync/TinPeriodicBackgroundSyncTerraceWakeUpTask;

    invoke-direct {p0}, Lcom/sec/terrace/browser/background_sync/TinPeriodicBackgroundSyncTerraceWakeUpTask;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerBackgroundTask;

    invoke-direct {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerBackgroundTask;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask;

    invoke-direct {p0}, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask;-><init>()V

    return-object p0

    :cond_4
    new-instance p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;-><init>()V

    return-object p0
.end method

.method public static getInstanceForTesting()Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;->sInstance:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;

    return-object v0
.end method

.method public static setAsDefault(Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;->create(Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;)Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->setBackgroundTaskFactory(Lorg/chromium/components/background_task_scheduler/BackgroundTaskFactory;)V

    return-void
.end method


# virtual methods
.method public getBackgroundTaskFromTaskId(I)Lorg/chromium/components/background_task_scheduler/BackgroundTask;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;->createBackgroundTaskFromTaskId(I)Lorg/chromium/components/background_task_scheduler/BackgroundTask;

    move-result-object p0

    instance-of p1, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate;

    invoke-direct {v0}, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate;-><init>()V

    invoke-virtual {p1, v0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->setDelegate(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;)V

    :cond_0
    return-object p0
.end method
