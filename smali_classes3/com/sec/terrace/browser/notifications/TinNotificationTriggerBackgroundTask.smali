.class public Lcom/sec/terrace/browser/notifications/TinNotificationTriggerBackgroundTask;
.super Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;
.source "SourceFile"


# instance fields
.field private mShouldReschedule:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerBackgroundTask;->mShouldReschedule:Z

    return-void
.end method

.method public static schedule(JJ)V
    .locals 0

    const-string p0, "NotifTrigBT"

    const-string p1, "Scheduling BackgroundTasks with exact timing is unsupported"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onStartTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)I
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->getInstance()Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;

    move-result-object p1

    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p2

    const-string p3, "Timestamp"

    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->checkAndResetTrigger(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerBackgroundTask;->mShouldReschedule:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public onStartTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->getInstance()Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->triggerNotifications()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerBackgroundTask;->mShouldReschedule:Z

    invoke-interface {p3, p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;->taskFinished(Z)V

    return-void
.end method

.method public onStopTaskBeforeNativeLoaded(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerBackgroundTask;->mShouldReschedule:Z

    return p0
.end method

.method public onStopTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerBackgroundTask;->mShouldReschedule:Z

    return p0
.end method
