.class public Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask;
.super Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask$Natives;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;-><init>()V

    return-void
.end method

.method public static synthetic e(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask;->lambda$onStartTaskWithNative$0(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V

    return-void
.end method

.method private static synthetic lambda$onStartTaskWithNative$0(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;->taskFinished(Z)V

    return-void
.end method


# virtual methods
.method public onStartTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)I
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/background_sync/TinDeviceConditions;->getCurrentNetConnectionType(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStartTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string p2, "SoonestWakeupTime"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-string p1, "BackgroundSync.Wakeup.DelayTime"

    invoke-static {p1, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskJni;->get()Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask$Natives;

    move-result-object p1

    new-instance p2, Lcom/sec/terrace/browser/background_sync/a;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/sec/terrace/browser/background_sync/a;-><init>(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;I)V

    invoke-interface {p1, p0, p2}, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask$Natives;->fireOneShotBackgroundSyncEvents(Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStopTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStopTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
