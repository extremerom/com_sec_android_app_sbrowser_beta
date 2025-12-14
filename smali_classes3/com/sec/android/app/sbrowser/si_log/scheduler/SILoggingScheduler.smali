.class public Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final PARAM_KEY_DEFAULT_BROWSER:Ljava/lang/String; = "de"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_KEY_HOT_SEAT:Ljava/lang/String; = "hs"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PARAM_KEY_PUSH_USER_ID:Ljava/lang/String; = "pi"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mIsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->mIsInitialized:Z

    return-void
.end method

.method private getExtraParameter(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;
    .locals 2

    new-instance p0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;->getPushUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pi"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v0, "hs"

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;->isHotSeat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v0, "de"

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;->isDefaultBrowser()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isFirstScheduledLogging(J)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLastRequestedTimeExpired(JI)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->isFirstScheduledLogging(J)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSILoggingSchedulerInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->mIsInitialized:Z

    return p0
.end method

.method private sendDailyLogging(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;Ljava/lang/String;)V
    .locals 8

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "daily"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->getLastRequestedTimeStamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->shouldTriggerDailyLogging(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->getExtraParameter(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$1;

    invoke-direct {v7, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;Landroid/content/Context;)V

    const/16 v2, 0x3e6

    const v4, 0xf3a71

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getInstance()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->storeUsageHistory(J)V

    :cond_0
    return-void
.end method

.method private sendMonthlyLogging(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "monthly"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->getLastRequestedTimeStamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->shouldTriggerMonthlyLogging(J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$3;

    invoke-direct {v6, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$3;-><init>(Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;Landroid/content/Context;)V

    const/16 v1, 0x3e6

    const v3, 0xf3a72

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->shouldTriggerMonthlyStatusLogging()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getInstance(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->sendSIStatusLogs()V

    :cond_0
    return-void
.end method

.method private sendScheduledLogging(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->sendDailyLogging(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->sendWeeklyLogging(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->sendMonthlyLogging(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private sendWeeklyLogging(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "weekly"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->getLastRequestedTimeStamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->shouldTriggerWeeklyLogging(J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$2;

    invoke-direct {v6, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;Landroid/content/Context;)V

    const/16 v1, 0x3e6

    const v3, 0xf3a73

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->shouldTriggerWeeklyStatusLogging()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getInstance(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->sendSIStatusLogs()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLastRequestedTimeStamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "ActiveUserSILog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pref_last_requested_time_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-interface {v0, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->getLegacyLastRequestedTimeStamp(Landroid/content/Context;)J

    move-result-wide p0

    cmp-long p2, p0, v1

    if-eqz p2, :cond_0

    return-wide p0

    :cond_0
    return-wide v3
.end method

.method public getLegacyLastRequestedTimeStamp(Landroid/content/Context;)J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "ActiveUserSILog"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "pref_last_requested_time"

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public sendStatistics(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->sendScheduledLogging(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;)V

    return-void
.end method

.method public shouldTriggerDailyLogging(J)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p0, 0x5265c00

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldTriggerMonthlyLogging(J)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->isLastRequestedTimeExpired(JI)Z

    move-result p0

    return p0
.end method

.method public shouldTriggerMonthlyStatusLogging()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/si_log/model/CommonLoggingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/CommonLoggingGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/CommonLoggingGlobalConfigUtils$Companion;->isMonthlyStatusLogging()Z

    move-result p0

    return p0
.end method

.method public shouldTriggerWeeklyLogging(J)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->isLastRequestedTimeExpired(JI)Z

    move-result p0

    return p0
.end method

.method public shouldTriggerWeeklyStatusLogging()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/si_log/model/CommonLoggingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/CommonLoggingGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/CommonLoggingGlobalConfigUtils$Companion;->isWeeklyStatusLogging()Z

    move-result p0

    return p0
.end method

.method public storeLastRequestedTimeStamp(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "ActiveUserSILog"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pref_last_requested_time_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public declared-synchronized triggerScheduledLogging(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->isSILoggingSchedulerInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->mIsInitialized:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->sendStatistics(Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
