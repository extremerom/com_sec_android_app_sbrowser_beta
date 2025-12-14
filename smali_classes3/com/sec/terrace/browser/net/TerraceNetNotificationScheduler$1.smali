.class Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/net/TinNetNotificationScheduler$TinNetSchedulerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler;->setObserver(Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$1;->val$observer:Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelScheduleForNotification(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$1;->val$observer:Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;->onCancelScheduleForNotification(I)V

    return-void
.end method

.method public onScheduleNetworkAvailableNotification(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$1;->val$observer:Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;->onScheduleNetworkAvailableNotification(ILjava/lang/String;)V

    return-void
.end method
