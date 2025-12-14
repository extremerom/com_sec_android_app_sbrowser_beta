.class public Lcom/sec/terrace/browser/net/TinNetNotificationScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;
    }
.end annotation


# static fields
.field private static sTinNetSchedulerObserver:Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;


# direct methods
.method public static onCancelScheduleForNotification(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/net/TinNetNotificationScheduler;->sTinNetSchedulerObserver:Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;->onCancelScheduleForNotification(I)V

    return-void
.end method

.method public static onScheduleNetworkAvailableNotification(ILjava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/net/TinNetNotificationScheduler;->sTinNetSchedulerObserver:Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;->onScheduleNetworkAvailableNotification(ILjava/lang/String;)V

    return-void
.end method

.method public static setObserver(Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/net/TinNetNotificationScheduler;->sTinNetSchedulerObserver:Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;

    return-void
.end method
