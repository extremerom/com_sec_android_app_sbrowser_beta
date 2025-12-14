.class public Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil;->lambda$getAntiTrackingStats$0(Landroid/content/Context;)V

    return-void
.end method

.method public static getAntiTrackingStats(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 13

    const-string v0, "getAntiTrackingStats DONE : "

    const-string v1, "SmartAntiTrackingUtil"

    const-string v2, "getAntiTrackingStats"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "server_upload_done"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, -0x1

    const-string v5, "mode"

    if-nez v3, :cond_0

    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_0
    new-instance v3, LB2/h;

    const/4 v6, 0x4

    invoke-direct {v3, p0, v6}, LB2/h;-><init>(Landroid/content/Context;I)V

    invoke-static {v3}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    new-instance v7, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;

    invoke-direct {v7}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;-><init>()V

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v8

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v10

    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v12, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil$1;

    invoke-direct {v12, v2, p0}, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil$1;-><init>(Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v7 .. v12}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;->getAntiTrackingStats(JJLcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;)V

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v6, v7, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static synthetic lambda$getAntiTrackingStats$0(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
