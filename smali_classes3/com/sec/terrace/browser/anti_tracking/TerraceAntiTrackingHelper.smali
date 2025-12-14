.class public Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;
    }
.end annotation


# static fields
.field static final PREF_ANTI_TRACKING_ALLOWLISTED_TRACKER_REQUEST_COUNT:Ljava/lang/String; = "pref_anti_tracking_whitelisted_tracker_request_count"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PREF_ANTI_TRACKING_BLOCKED_TRACKER_REQUEST_COUNT:Ljava/lang/String; = "pref_anti_tracking_blocked_tracker_request_count"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PREF_ANTI_TRACKING_SHOW_TRACKER_STATS:Ljava/lang/String; = "pref_anti_tracking_show_tracker_stats"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PREF_ANTI_TRACKING_TEST_TRACKER_ENTRIES:Ljava/lang/String; = "pref_anti_tracking_test_tracker_entries"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STATUS_ALLOWLISTED_TRACKER_REQUEST_COUNT:Ljava/lang/String; = "0072"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STATUS_BLOCKED_TRACKER_REQUEST_COUNT:Ljava/lang/String; = "0071"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static getTestTrackerDomains()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_anti_tracking_test_tracker_entries"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTotalAllowlistedTrackerRequestCount(I)I
    .locals 1

    const-string v0, "pref_anti_tracking_whitelisted_tracker_request_count"

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->updateAndReturnTotalRequestCount(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getTotalBlockedTrackerRequestCount(I)I
    .locals 1

    const-string v0, "pref_anti_tracking_blocked_tracker_request_count"

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->updateAndReturnTotalRequestCount(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static isValidDomain(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^((?!-)[A-Za-z0-9-]{1,63}(?<!-)\\.)+[A-Za-z]{2,6}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static sendStatusLogsForAccumulatedStats()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;->logLinkDecorationStatusLogs()V

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;->getAccumulatedStatsForBlockedRequests()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->getTotalBlockedTrackerRequestCount(I)I

    move-result v0

    const-string v1, "0071"

    invoke-static {v1, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendStatusLog(Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;->getAccumulatedStatsForAllowlistedRequests()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {v0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->getTotalAllowlistedTrackerRequestCount(I)I

    move-result v0

    const-string v1, "0072"

    invoke-static {v1, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendStatusLog(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;->clearAccumulatedStats()V

    return-void
.end method

.method public static setAllowlist(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;->setAllowlist(Ljava/lang/String;)V

    return-void
.end method

.method public static setBlocklist(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;->setBlocklist(Ljava/lang/String;)V

    return-void
.end method

.method public static setMetadata(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;->setMetadata(Ljava/lang/String;)V

    return-void
.end method

.method public static setTestTrackerDomains(Ljava/lang/String;)V
    .locals 6

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->isValidDomain(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;->setTestTrackerDomain(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_anti_tracking_test_tracker_entries"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static shouldShowTrackerStats()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_anti_tracking_show_tracker_stats"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static updateAndReturnTotalRequestCount(Ljava/lang/String;I)I
    .locals 5

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    long-to-int p0, v1

    return p0
.end method
