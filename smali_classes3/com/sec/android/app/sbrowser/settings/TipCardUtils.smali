.class public Lcom/sec/android/app/sbrowser/settings/TipCardUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;
    }
.end annotation


# direct methods
.method private static getTipCardLastShowTimestamp(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;)J
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$1;->$SwitchMap$com$sec$android$app$sbrowser$settings$TipCardUtils$TipCardType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string p1, "tip_card_setting_preference"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, -0x1

    const-string p1, "pref_tip_card_set_as_default_last_show_timestamp"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getTipCardShowCount(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$1;->$SwitchMap$com$sec$android$app$sbrowser$settings$TipCardUtils$TipCardType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string p1, "tip_card_setting_preference"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "pref_tip_card_set_as_default_last_show_count"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static needToShowTipCard(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;)Z
    .locals 9

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TipCardUtils;->getTipCardLastShowTimestamp(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;)J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TipCardUtils;->getTipCardShowCount(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;)I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "HUAWEI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "TipCardUtils"

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const-string v4, "tip_card_setting_preference"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v4, "pref_tip_card_set_as_default_has_shown"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "needToShowTipCard huawei"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "days from last showing : "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    if-lt p1, p0, :cond_1

    return v6

    :cond_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1e

    invoke-virtual {p0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    const-wide/16 v7, -0x1

    cmp-long v0, v0, v7

    if-eqz v0, :cond_3

    cmp-long v0, v2, p0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    return v6

    :cond_3
    :goto_0
    const-string v0, "satisfied duration: "

    invoke-static {p0, p1, v0, v5}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static updatePreferenceStatus(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$1;->$SwitchMap$com$sec$android$app$sbrowser$settings$TipCardUtils$TipCardType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TipCardUtils;->getTipCardShowCount(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v0, "tip_card_setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pref_tip_card_set_as_default_last_show_timestamp"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_tip_card_set_as_default_last_show_count"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateSetAsDefaultTipCardHasShown(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tip_card_setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_tip_card_set_as_default_has_shown"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
