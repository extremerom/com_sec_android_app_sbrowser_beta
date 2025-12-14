.class public Lcom/sec/terrace/browser/notifications/TinNotificationService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/notifications/TinNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# static fields
.field private static sJobSchedulerForTests:Landroid/app/job/JobScheduler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationService$Receiver;->sJobSchedulerForTests:Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationService;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Received a notification intent in the NotificationService\'s receiver."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/terrace/browser/notifications/TinNotificationJobService;->getJobExtrasFromIntent(Landroid/content/Intent;)Landroid/os/PersistableBundle;

    move-result-object p0

    new-instance p2, Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/sec/terrace/browser/notifications/TinNotificationJobService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x15

    invoke-direct {p2, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p2, p0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/terrace/browser/notifications/TinNotificationService$Receiver;->getScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
