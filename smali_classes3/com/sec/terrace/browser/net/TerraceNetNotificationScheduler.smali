.class public Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;
    }
.end annotation


# direct methods
.method public static setObserver(Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$1;-><init>(Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;)V

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TinNetNotificationScheduler;->setObserver(Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;)V

    return-void
.end method
