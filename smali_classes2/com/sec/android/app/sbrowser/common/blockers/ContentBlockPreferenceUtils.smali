.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addInstalledPackageNameFromDirectDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getInstalledPackageNamesFromDirectDownload(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameFromPackageList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setInstalledPackageNameListFromDirectDownload(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clearLastNotificationId(Landroid/content/Context;)V
    .locals 2

    const-string v0, "contentblock_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "content_block_last_notification_id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getAdblockerSILogLastSentTime(Landroid/content/Context;)J
    .locals 4

    const-string v0, "updated_time_adblocker_si_log"

    const-wide/16 v1, 0x0

    const-string v3, "adblocker_si_log"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getBadgePackageInstalledTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3

    const-string v0, "content_block_badge_preferences"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getBadgePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "content_blocker_new_badge_package"

    const-string v1, ""

    const-string v2, "content_block_badge_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBadgePackageNameFromPackageList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v0, ";"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getBadgePackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBadgePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getBannerDisplayedCount(Landroid/content/Context;)I
    .locals 3

    const-string v0, "banner_displayed_count"

    const/4 v1, 0x0

    const-string v2, "content_block_promotion_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBannerLastShowTime(Landroid/content/Context;)J
    .locals 4

    const-string v0, "banner_last_show"

    const-wide/16 v1, 0x0

    const-string v3, "content_block_promotion_preferences"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBannerRepeatedCount(Landroid/content/Context;)I
    .locals 3

    const-string v0, "repeated_number"

    const/4 v1, 0x0

    const-string v2, "content_block_promotion_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBlockedAdsCounts(Landroid/content/Context;)[I
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contentblock_data"

    const-string v1, "blocked_ads_count"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "["

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "]"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    new-array v2, v1, [I

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    new-array p0, v0, [I

    return-object p0
.end method

.method public static getConfigFileLastUpdatedTime(Landroid/content/Context;)J
    .locals 4

    const-string v0, "updated_time_config_file"

    const-wide/16 v1, 0x0

    const-string v3, "contentblock_data"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getConfigFileUpdatePeriod(Landroid/content/Context;)J
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->getUpdatePeriod()Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;->getConfigFile()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-wide v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->DEFAULT_RESOURCE_UPDATE_PERIOD:J

    return-wide v0
.end method

.method private static getContentBlockerAvailableData(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "content_blocker_available_data"

    const/4 v1, 0x0

    const-string v2, "contentblock_data"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContentBlockerAvailableDataList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerAvailableData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$4;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$4;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getContentBlockerAvailableDataList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContentBlock.PreferenceUtils"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getContentBlockerConfigBackup(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "contentblock_data"

    const-string v1, "content_blocker_config_backup"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$1;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getContentBlockerConfigBackup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContentBlock.PreferenceUtils"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method private static getContentBlockerData(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "content_blocker_data"

    const/4 v1, 0x0

    const-string v2, "contentblock_data"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContentBlockerDataList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$2;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$2;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getContentBlockerDataList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContentBlock.PreferenceUtils"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static getContentBlockerFeaturedData(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "content_blocker_featured_data"

    const/4 v1, 0x0

    const-string v2, "contentblock_data"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContentBlockerFeaturedDataList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerFeaturedData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$3;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$3;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getContentBlockerFeaturedDataList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContentBlock.PreferenceUtils"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getContentBlockerMenuLastVisitedTime(Landroid/content/Context;)J
    .locals 3

    const-string v0, "content_blocker_menu_last_visited_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getDefaultPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getMatchedExtensionApp(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getDisplayedAppName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultListLastUpdatedTime(Landroid/content/Context;)J
    .locals 4

    const-string v0, "updated_time_default_list"

    const-wide/16 v1, 0x0

    const-string v3, "contentblock_data"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultListUpdatePeriod(Landroid/content/Context;)J
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->getUpdatePeriod()Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;->getDefaultList()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-wide v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->DEFAULT_RESOURCE_UPDATE_PERIOD:J

    return-wide v0
.end method

.method public static getETag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "etag_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "contentblock_list"

    invoke-static {p0, v1, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIconLastUpdatedTime(Landroid/content/Context;)J
    .locals 4

    const-string v0, "updated_time_icon"

    const-wide/16 v1, 0x0

    const-string v3, "contentblock_data"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIconUpdatePeriod(Landroid/content/Context;)J
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->getUpdatePeriod()Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;->getIcon()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-wide v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->DEFAULT_RESOURCE_UPDATE_PERIOD:J

    return-wide v0
.end method

.method public static getInstalledAppNames(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isWhite()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getInstalledPackageNames(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isWhite()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getInstalledPackageNamesFromDirectDownload(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "content_blocker_installed_package_from_direct_download"

    const/4 v1, 0x0

    const-string v2, "contentblock_data"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getLastNotificationId(Landroid/content/Context;)I
    .locals 3

    const-string v0, "content_block_last_notification_id"

    const v1, 0x30d40

    const-string v2, "contentblock_data"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLegacyBadgePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "content_blocker_badge_package"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getDefaultPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLegacyBadgePackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getLegacyBadgePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getMatchedExtensionApp(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->getExtensionApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getNumOfSelectedPackageNameList(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public static getNumberOfInstalledPackagesFromDirectDownload(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->removeInstalledPackageFromDirectDownloadIfNeeded(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getInstalledPackageNamesFromDirectDownload(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public static getPromotionAllowlist(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "content_block_promotion_preferences"

    const-string v1, "promotion_allowlist"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public static getSelectedAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$6;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$6;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f140340

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    :goto_2
    if-le v2, v3, :cond_6

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelectedPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "content_blocker_saved_package"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getDefaultPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelectedPackageNameFromPackageList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$5;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils$5;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v0, ";"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static hasLegacyBadgePackagePreference(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "content_blocker_badge_package"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasLegacyMenuLastVisitedTime(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "content_blocker_menu_last_visited_time"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasLegacyNewInstalledPackage(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerMenuLastVisitedTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NameNotFoundException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentBlock.PreferenceUtils"

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static hasNewBadgePackage(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBadgePackageInstalledTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NameNotFoundException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentBlock.PreferenceUtils"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static hasRequestedPermissionForNotifications(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "content_block_notification_permisison_requested"

    const/4 v1, 0x0

    const-string v2, "contentblock_data"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isAAABaitElementDetectionEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "aaa_bait_element_detection"

    const/4 v1, 0x1

    const-string v2, "content_block_config_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isAAABaitJavascriptDetectionEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "aaa_bait_javascript_detection"

    const/4 v1, 0x1

    const-string v2, "content_block_config_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isContentBlockerAppsInstalled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isContentBlockerEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isActivatedByConfig(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerEnabled(Landroid/content/Context;Z)V

    return v1

    :cond_0
    const-string v0, "enable_content_blocker"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getDefaultPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isContentBlockerEnabledForChinaGED(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "enable_content_blocker_for_china_ged"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getDefaultPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isInstalledOrUpdatedFromPlayStore(Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "com.android.vending"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const/16 v3, 0x22

    if-lt v1, v3, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->d(Landroid/content/pm/PackageManager;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v3

    invoke-static {v3}, LA2/q;->n(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->d(Landroid/content/pm/PackageManager;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->q(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ContentBlock.PreferenceUtils"

    const-string v1, "PackageNotFoundException"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_0
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNeedToSendAdblockerSILog(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getAdblockerSILogLastSentTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->ADBLOCK_SILOG_UPDATE_PERIOD:I

    int-to-long v0, p0

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNeedToUpdateBannerRepeatedCount(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBannerLastShowTime(Landroid/content/Context;)J

    move-result-wide v0

    sget-wide v2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->BANNER_SHOW_DELAY:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long p0, v4, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNeedToUpdateConfigFile(Landroid/content/Context;)Z
    .locals 8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isContentBlockerTestConfigUsed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getConfigFileLastUpdatedTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getConfigFileUpdatePeriod(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long p0, v6, v4

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isNeedToUpdateDefaultList(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getDefaultListLastUpdatedTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getDefaultListUpdatePeriod(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long p0, v4, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNeedToUpdateIcon(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getIconLastUpdatedTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getIconUpdatePeriod(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long p0, v4, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNeverShowBanner(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isActivatedByConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "never_show_banner"

    const/4 v1, 0x0

    const-string v2, "content_block_promotion_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isPaidApp(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getMatchedExtensionApp(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isPaid()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isSitekeyEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "enable_sitekey"

    const/4 v1, 0x0

    const-string v2, "content_block_config_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isTemporarilyUnblockAdsEnabled(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getTemporarilyUnblockAdsSupported()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_block_config_preferences"

    const-string v2, "enable_temporarily_unblock_ads"

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    :cond_0
    const-string p0, "enable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isUpdatedBannerConfiguration(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "update_banner_configuration_flag"

    const/4 v1, 0x0

    const-string v2, "content_block_promotion_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isUpdatedDirectDownloadNewBadge(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "update_direct_download_badge_flag"

    const/4 v1, 0x0

    const-string v2, "content_block_badge_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isUsingFeaturedCategory(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "use_featured_category"

    const/4 v1, 0x0

    const-string v2, "content_block_config_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static removeBadgePackageListIfNotInstalled(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBadgePackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBadgePackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static removeInstalledPackageFromDirectDownloadIfNeeded(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getInstalledPackageNamesFromDirectDownload(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameFromPackageList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setInstalledPackageNameListFromDirectDownload(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static removeLegacyBadgePackage(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "content_blocker_badge_package"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeLegacyMenuLastVisitedTime(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "content_blocker_menu_last_visited_time"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeSelectedPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameFromPackageList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setSelectedPackageName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static resetBannerRepeatedCount(Landroid/content/Context;)V
    .locals 3

    const-string v0, "repeated_number"

    const/4 v1, 0x0

    const-string v2, "content_block_promotion_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setAAABaitElementDetectionEnabled(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAAABaitElementDetectionEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentBlock.PreferenceUtils"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content_block_config_preferences"

    const-string v1, "aaa_bait_element_detection"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setAAABaitElementDetectionEnabled(Z)V

    return-void
.end method

.method public static setAAABaitJavascriptDetectionEnabled(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAAABaitJavascriptDetectionEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentBlock.PreferenceUtils"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content_block_config_preferences"

    const-string v1, "aaa_bait_javascript_detection"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setAAABaitJavascriptDetectionEnabled(Z)V

    return-void
.end method

.method private static setBadgePackageInstalledTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "content_block_badge_preferences"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static setBadgePackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "content_block_badge_preferences"

    const-string v1, "content_blocker_new_badge_package"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBadgePackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBadgePackageNameFromPackageList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBadgePackageName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setBlockedAdsCounts(Landroid/content/Context;[I)V
    .locals 2

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "contentblock_data"

    const-string v1, "blocked_ads_count"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContentBlockerAvailableData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setContentBlockerAvailableData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentBlock.PreferenceUtils"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "contentblock_data"

    const-string v1, "content_blocker_available_data"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContentBlockerConfigBackup(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setContentBlockerConfigBackup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentBlock.PreferenceUtils"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "contentblock_data"

    const-string v1, "content_blocker_config_backup"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContentBlockerData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setContentBlockerData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentBlock.PreferenceUtils"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "contentblock_data"

    const-string v1, "content_blocker_data"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContentBlockerEnabled(Landroid/content/Context;Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setSelectedPackageName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v0, "enable_content_blocker"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setDefaultPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p0, "0059"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method public static setContentBlockerEnabledForChinaGED(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "enable_content_blocker_for_china_ged"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setDefaultPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setContentBlockerFeaturedData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setContentBlockerFeaturedData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentBlock.PreferenceUtils"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "contentblock_data"

    const-string v1, "content_blocker_featured_data"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setETag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "etag_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentblock_list"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setExtensionsVisitedOnce(Landroid/content/Context;)V
    .locals 3

    const-string v0, "content_blocker_was_extensions_visited_once"

    const/4 v1, 0x1

    const-string v2, "content_block_badge_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setHasRequestedPermissionForNotifications(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "contentblock_data"

    const-string v1, "content_block_notification_permisison_requested"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static setInstalledPackageNameListFromDirectDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "contentblock_data"

    const-string v1, "content_blocker_installed_package_from_direct_download"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIsNeverShowBanner(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "content_block_promotion_preferences"

    const-string v1, "never_show_banner"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setIsUpdatedBannerConfiguration(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "content_block_promotion_preferences"

    const-string v1, "update_banner_configuration_flag"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setLastNotificationId(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "contentblock_data"

    const-string v1, "content_block_last_notification_id"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setNeverShowPromotions(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerAppsInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeverShowBanner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setIsNeverShowBanner(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private static setSelectedPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "content_blocker_saved_package"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setDefaultPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSelectedPackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameFromPackageList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setSelectedPackageName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setSitekeyEnabled(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "content_block_config_preferences"

    const-string v1, "enable_sitekey"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUpdatedDirectDownloadNewBadge(Landroid/content/Context;)V
    .locals 3

    const-string v0, "update_direct_download_badge_flag"

    const/4 v1, 0x1

    const-string v2, "content_block_badge_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUseFeaturedCategory(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "content_block_config_preferences"

    const-string v1, "use_featured_category"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static shouldDisplayBadge(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static updateAdblockerSILogLastSentTime(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "adblocker_si_log"

    const-string v1, "updated_time_adblocker_si_log"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static updateBadgePackageInstalledTime(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBadgePackageInstalledTime(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameNotFoundException : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentBlock.PreferenceUtils"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateBadgePackageStatus(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getInstalledPackageNames(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBadgePackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateBadgePackageInstalledTime(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static updateBannerDisplayedCount(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBannerDisplayedCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "content_block_promotion_preferences"

    const-string v2, "banner_displayed_count"

    invoke-static {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateBannerDisplayedInfo(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateBannerDisplayedCount(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateBannerLastShowTime(Landroid/content/Context;J)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->resetBannerRepeatedCount(Landroid/content/Context;)V

    return-void
.end method

.method public static updateBannerLastShowTime(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "content_block_promotion_preferences"

    const-string v1, "banner_last_show"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static updateBannerRepeatedCount(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBannerRepeatedCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "content_block_promotion_preferences"

    const-string v2, "repeated_number"

    invoke-static {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateConfigFileLastUpdatedTime(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "contentblock_data"

    const-string v1, "updated_time_config_file"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static updateDefaultListLastUpdatedTime(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "contentblock_data"

    const-string v1, "updated_time_default_list"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static updateIconLastUpdatedTime(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "contentblock_data"

    const-string v1, "updated_time_icon"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static updatePromotionAllowlist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "content_block_promotion_preferences"

    const-string v1, "promotion_allowlist"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static wasExtensionsVisitedOnce(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "content_blocker_was_extensions_visited_once"

    const/4 v1, 0x0

    const-string v2, "content_block_badge_preferences"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
