.class public Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCumulativeVisitedCountToday(Landroid/content/Context;)I
    .locals 11

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    const-string v0, "pref_bookmark_visited_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v0, "pref_bookmark_visited_count"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    cmp-long v7, v3, v1

    const-wide/32 v8, 0x5265c00

    if-eqz v7, :cond_0

    sub-long v3, v5, v3

    cmp-long v3, v3, v8

    if-lez v3, :cond_1

    :cond_0
    move v0, p1

    :cond_1
    const-string v3, "pref_saved_page_visited_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v7, "pref_saved_page_visited_count"

    invoke-interface {p0, v7, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    cmp-long v10, v3, v1

    if-eqz v10, :cond_2

    sub-long v3, v5, v3

    cmp-long v3, v3, v8

    if-lez v3, :cond_3

    :cond_2
    move v7, p1

    :cond_3
    const-string v3, "pref_settings_sync_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v10, "pref_settings_sync_shown"

    invoke-interface {p0, v10, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_5

    sub-long/2addr v5, v3

    cmp-long v1, v5, v8

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    move p1, p0

    :cond_5
    :goto_0
    add-int/2addr v0, v7

    add-int/2addr p1, v0

    :cond_6
    return p1
.end method

.method public isMonday()Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMondayAndFirstVisit(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;->isMonday()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;->getCumulativeVisitedCountToday(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWednesday()Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWednesdayAndFirstVisit(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;->isWednesday()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;->getCumulativeVisitedCountToday(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
