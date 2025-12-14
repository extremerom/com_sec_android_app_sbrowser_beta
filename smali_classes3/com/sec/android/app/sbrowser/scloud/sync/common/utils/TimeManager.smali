.class public final Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTimeManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized create()Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;->sTimeManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;->sTimeManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;->sTimeManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getCurrentTime(Landroid/content/Context;)J
    .locals 4

    const-string v0, "time_difference"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getLongValuePrivate(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method private static declared-synchronized updateSettings(Landroid/content/Context;JJJ)V
    .locals 0

    const-class p3, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;

    monitor-enter p3

    :try_start_0
    const-string p4, "time_difference"

    invoke-static {p0, p4, p1, p2}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateLongValuePrivate(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized updateSettingsUsingServer(J)V
    .locals 12

    const-string v0, "The new TIME_DIFFERENCE is "

    const-string v1, "The received server time is "

    const-class v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;

    monitor-enter v2

    :try_start_0
    const-string v3, " Time Manager "

    const-string v4, " Inside the updateSettingsUsingServer method"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    const-string p0, " Time Manager "

    const-string p1, "updateSettingsUsingServer context is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v6, " Time Manager "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "time_difference"

    invoke-static {v5, v1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getLongValuePrivate(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, p0, v8

    if-lez v1, :cond_1

    sub-long/2addr v3, p0

    goto :goto_0

    :cond_1
    move-wide v3, v8

    :goto_0
    cmp-long p0, v6, v3

    if-eqz p0, :cond_2

    const-string p0, " Time Manager "

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-wide v6, v3

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/TimeManager;->updateSettings(Landroid/content/Context;JJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
