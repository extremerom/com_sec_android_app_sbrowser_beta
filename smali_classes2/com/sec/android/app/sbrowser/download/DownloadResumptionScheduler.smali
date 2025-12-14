.class public Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDownloadResumptionScheduler:Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getDownloadResumptionScheduler()Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->sDownloadResumptionScheduler:Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->sDownloadResumptionScheduler:Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->sDownloadResumptionScheduler:Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;

    return-object v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->mContext:Landroid/content/Context;

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/16 v0, 0x4e21

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public handleDownloadResumption()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_ALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->startDownloadNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public schedule(Z)V
    .locals 4

    const-string v0, "DownloadScheduler"

    const-string v1, "Resumption scheduled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/download/DownloadResumptionJobService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x4e21

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->mContext:Landroid/content/Context;

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
