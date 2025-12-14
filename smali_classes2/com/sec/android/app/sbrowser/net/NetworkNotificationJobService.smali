.class public Lcom/sec/android/app/sbrowser/net/NetworkNotificationJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string p0, "NetworkNotificationJobService"

    const-string v0, "onStartJob called"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string p1, "tabId"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "url"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->getInstance()Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->showNetworkNotification(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const-string p0, "NetworkNotificationJobService"

    const-string p1, "onStopJob called"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
