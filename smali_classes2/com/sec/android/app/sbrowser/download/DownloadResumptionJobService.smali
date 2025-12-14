.class public Lcom/sec/android/app/sbrowser/download/DownloadResumptionJobService;
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

    const-string p0, "onStartJob called"

    const-string v0, "DownloadJobService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->isOverrideDeadlineExpired()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Resuming downloads"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->getDownloadResumptionScheduler()Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->handleDownloadResumption()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
