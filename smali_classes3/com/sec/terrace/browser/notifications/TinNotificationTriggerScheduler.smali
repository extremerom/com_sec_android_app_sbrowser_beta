.class public Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$LazyHolder;,
        Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Clock;,
        Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Natives;
    }
.end annotation


# static fields
.field private static sInstanceForTests:Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;


# instance fields
.field private mClock:Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Clock;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->mClock:Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Clock;

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->sInstanceForTests:Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$LazyHolder;->INSTANCE:Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;

    :cond_0
    return-object v0
.end method

.method private getNextTrigger()J
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "notification_trigger_scheduler.next_trigger"

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private removeNextTrigger()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "notification_trigger_scheduler.next_trigger"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setNextTrigger(J)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "notification_trigger_scheduler.next_trigger"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public checkAndResetTrigger(J)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->getNextTrigger()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->removeNextTrigger()V

    const/4 p0, 0x1

    return p0
.end method

.method public schedule(J)V
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->mClock:Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Clock;

    invoke-interface {v0}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->getNextTrigger()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler;->setNextTrigger(J)V

    goto :goto_0

    :cond_0
    cmp-long p0, v2, v0

    if-ltz p0, :cond_1

    return-void

    :cond_1
    move-wide p1, v2

    :goto_0
    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerBackgroundTask;->schedule(JJ)V

    return-void
.end method

.method public triggerNotifications()V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerSchedulerJni;->get()Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Natives;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Natives;->triggerNotifications()V

    return-void
.end method
