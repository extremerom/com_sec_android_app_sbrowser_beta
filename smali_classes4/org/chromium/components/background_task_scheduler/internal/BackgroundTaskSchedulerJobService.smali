.class Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;,
        Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final DEADLINE_DELTA_MS:J = 0x3e8L

.field private static sClock:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf1/g;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    sput-object v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->sClock:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;
    .locals 1

    sget-object v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->sClock:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;

    return-object v0
.end method

.method public static createJobInfoFromTaskInfo(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Landroid/app/job/JobInfo;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "_background_task_extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->getTaskId()I

    move-result v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->isPersisted()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->requiresCharging()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->getRequiredNetworkType()I

    move-result v1

    invoke-static {v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->getJobInfoNetworkTypeFromTaskNetworkType(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    sget v1, Lb1/a;->a:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v1, v2, :cond_0

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "CODENAME"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "UpsideDownCake"

    invoke-static {v2, v1}, Lb1/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->isUserInitiated()Z

    move-result v1

    invoke-static {p0, v1}, Lorg/chromium/components/autofill/b;->s(Landroid/app/job/JobInfo$Builder;Z)V

    :cond_1
    new-instance v1, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;

    invoke-direct {v1, p0, v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/os/PersistableBundle;)V

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->getTimingInfo()Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;->accept(Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;)V

    invoke-virtual {v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$JobInfoBuilderVisitor;->getBuilder()Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static didTaskExpire(Landroid/app/job/JobParameters;J)Z
    .locals 10

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "_background_task_schedule_time"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "_background_task_end_time"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v6, p1

    invoke-static/range {v2 .. v7}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->getExpirationStatus(JJJ)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "_background_task_interval_time"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    :cond_2
    move-wide v4, v0

    const-string v0, "_background_task_flex_time"

    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v6

    invoke-virtual {p0, v0, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    move-wide v8, p1

    invoke-static/range {v2 .. v9}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->getExpirationStatus(JJJJ)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getJobInfoNetworkTypeFromTaskNetworkType(I)I
    .locals 0

    return p0
.end method

.method public static getTaskParametersFromJobParameters(Landroid/app/job/JobParameters;)Lorg/chromium/components/background_task_scheduler/TaskParameters;
    .locals 2

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/TaskParameters;->create(I)Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v1, "_background_task_extras"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v1, p0}, Landroid/os/BaseBundle;->putAll(Landroid/os/PersistableBundle;)V

    invoke-virtual {v0, v1}, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;->addExtras(Landroid/os/PersistableBundle;)Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;

    invoke-virtual {v0}, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskParameters;

    move-result-object p0

    return-object p0
.end method

.method private hasPendingJob(Landroid/app/job/JobScheduler;I)Z
    .locals 0

    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cancel(Landroid/content/Context;I)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const-string p0, "jobscheduler"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to cancel task: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BkgrdTaskSchedulerJS"

    invoke-static {p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {p1, p2}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->createJobInfoFromTaskInfo(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Landroid/app/job/JobInfo;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->shouldUpdateCurrent()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->getTaskId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService;->hasPendingJob(Landroid/app/job/JobScheduler;I)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    return v2

    :catch_0
    move-exception p1

    const-string p2, "BkgrdTaskSchedulerJS"

    const-string v0, "Unable to schedule with Android."

    invoke-static {p2, v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p0
.end method
