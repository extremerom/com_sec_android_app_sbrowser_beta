.class public Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler$BackgroundSyncTask;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppropriateTaskId(I)I
    .locals 1
    .param p0    # I
        .annotation build Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler$BackgroundSyncTask;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x69

    return p0

    :cond_1
    const/16 p0, 0x66

    return p0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;->sInstance:Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;

    invoke-direct {v0}, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;->sInstance:Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;->sInstance:Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;->sInstance:Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancelOneOffTask(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler$BackgroundSyncTask;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    move-result-object p0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;->getAppropriateTaskId(I)I

    move-result p1

    invoke-interface {p0, v0, p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;->cancel(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public scheduleOneOffTask(IJ)Z
    .locals 3
    .param p1    # I
        .annotation build Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler$BackgroundSyncTask;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    const-string v2, "SoonestWakeupTime"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->create()Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->setWindowStartTimeMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object p2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p2, v0, v1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->setWindowEndTimeMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->setExpiresAfterWindowEndTime(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;

    move-result-object p2

    invoke-static {p1}, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskScheduler;->getAppropriateTaskId(I)I

    move-result p1

    invoke-static {p1, p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->createTask(ILorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setRequiredNetworkType(I)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setUpdateCurrent(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setIsPersisted(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskInfo;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    move-result-object p1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;->schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
