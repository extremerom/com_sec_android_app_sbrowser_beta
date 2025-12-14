.class public Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;,
        Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_COOLING_TIME_MILLIS:J

.field private static sConfigUpdatingNow:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mApiGetConfigsConnectionForTesting:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

.field private mBaseDomainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultParam:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

.field private final mExperimentManager:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;

.field private final mRequestParameterForTesting:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->sConfigUpdatingNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->DEFAULT_COOLING_TIME_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;-><init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mDefaultParam:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    new-instance v0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mExperimentManager:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mApiGetConfigsConnectionForTesting:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mRequestParameterForTesting:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigUtils;->getBaseDomainMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mBaseDomainMap:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;)Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mExperimentManager:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;)J
    .locals 1

    const-string v0, "global_config_preference"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->getLastUpdatedTimeStamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->invokeFailedCallback(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;J)V
    .locals 1

    const-string v0, "global_config_preference"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->setLastSuccessTimeStamp(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "global_config_preference"

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->storeUpdatedInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->updateGlobalConfigUpdateHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->sConfigUpdatingNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mBaseDomainMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "/v2"

    invoke-static {v0, p0, p1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLastUpdatedTimeStamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "pref_global_config__updated_timestamp_millis"

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getRequestParameter()Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mRequestParameterForTesting:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mDefaultParam:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    :goto_0
    return-object v0
.end method

.method private invokeFailedCallback(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;Ljava/lang/String;)V
    .locals 0

    const-string p0, "GlobalConfigUpdateClient"

    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, p1, p3}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;->onFailed(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isUpdatePeriodExpired(Landroid/content/Context;)Z
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "global_config_preference"

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->getLastUpdatedTimeStamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v4

    const-string v7, "updateCoolingTimeMillis"

    sget-wide v8, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->DEFAULT_COOLING_TIME_MILLIS:J

    const-string v5, "GlobalConfigUpdateFeature"

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getLong(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    sub-long/2addr v0, v2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setLastSuccessTimeStamp(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_global_config__last_success_timestamp_millis"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->setLastUpdatedTimeStamp(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private storeUpdatedInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->getRequestParameter()Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v2, "pref_global_config_etag"

    invoke-interface {p2, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "pref_global_config__last_success_timestamp_millis"

    invoke-interface {p3, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getServerProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_global_config__updated_server_profile"

    invoke-interface {p3, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "pref_global_config__updated_device_model"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "pref_global_config__updated_operator"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getOperatorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "pref_global_config__updated_internet_version"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "pref_global_config__updated_country"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "pref_global_config__updated_internet_release"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetRelease(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "pref_global_config__updated_device_manufacturer"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceManufacturer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "pref_global_config__updated_android_version"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getAndroidVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "pref_global_config__updated_client_type"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getClientType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_global_config__updated_timestamp_millis"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateGlobalConfigUpdateHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p6    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p6, :cond_0

    move-object p6, v0

    goto :goto_0

    :cond_0
    const-string v1, "X-Cache"

    invoke-interface {p6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/List;

    :goto_0
    if-eqz p6, :cond_2

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    move-object v0, p6

    check-cast v0, Ljava/lang/String;

    :cond_2
    :goto_1
    new-instance p6, Ljava/text/SimpleDateFormat;

    const-string v1, "yy/MM/dd HH:mm:ss"

    invoke-direct {p6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p6, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getPlatformType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&dt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&av="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getAndroidVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ma="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceManufacturer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetRelease(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&iv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&mo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&oc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getOperatorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&cc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ct="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getClientType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p3, ""

    goto :goto_2

    :cond_3
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, "&iu="

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mExperimentManager:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;->getParameters()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "Updated : "

    invoke-static {p3, p6}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "\nServer : "

    invoke-static {p3, p5, p2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "\nParameters : "

    invoke-static {p2, p3, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "\nRequestETag : "

    invoke-static {p0, p2, p4}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_4

    const-string p2, "\nX-Cache : "

    invoke-static {p0, p2, v0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateHistoryPreferenceFragment;->updateGlobalConfigHistory(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updateIfNeededInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;)V
    .locals 7
    .param p3    # Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->sConfigUpdatingNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "global_config_preference"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->isParameterChanged(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->isUpdatePeriodExpired(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->sConfigUpdatingNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p3, :cond_1

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;->onFinished(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    new-instance v6, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$1;

    invoke-direct {v6, p0, p3, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$1;-><init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->updateAll(Landroid/content/Context;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;)V

    return-void
.end method


# virtual methods
.method public getETagFromPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "pref_global_config_etag"

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isParameterChanged(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->getRequestParameter()Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "pref_global_config__updated_server_profile"

    const-string v2, ""

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getServerProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_global_config__updated_device_model"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_global_config__updated_operator"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getOperatorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_global_config__updated_internet_version"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_global_config__updated_country"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_global_config__updated_internet_release"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getInternetRelease(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_global_config__updated_device_manufacturer"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getDeviceManufacturer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_global_config__updated_android_version"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getAndroidVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_global_config__updated_client_type"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getClientType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public resetLastUpdatedTimeStamp(Landroid/content/Context;)V
    .locals 3

    const-string v0, "global_config_preference"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->setLastUpdatedTimeStamp(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public resetUpdateInfo(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    const-string p0, "global_config_preference"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_global_config__updated_timestamp_millis"

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p1, "pref_global_config_etag"

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pref_global_config__updated_internet_release"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLastUpdatedTimeStamp(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_global_config__updated_timestamp_millis"

    invoke-interface {p0, p1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastUpdatedTimeStampOnMainThread(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_global_config__updated_timestamp_millis"

    invoke-interface {p0, p1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public storeETagToPreferenceOnMainThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_global_config_etag"

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateAll(Landroid/content/Context;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string v0, "request server profile : "

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->getRequestParameter()Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getServerProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v13, v1

    goto :goto_1

    :cond_0
    const-string v1, "global_config_preference"

    invoke-virtual {v10, v11, v1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->getETagFromPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    new-instance v14, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;

    invoke-direct {v10, v5}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v10, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mExperimentManager:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;->getParameters()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move/from16 v4, p3

    move-object/from16 v6, p2

    move-object v7, v13

    move-object v8, v12

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;-><init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;)V

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Ljava/lang/String;Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;)V

    iget-object v1, v10, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->mApiGetConfigsConnectionForTesting:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;

    if-eqz v1, :cond_1

    invoke-virtual {v14, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;->setHttpUrlConnectionOpenerForTesting(Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    const-string v1, "GlobalConfigUpdateClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->getRequestParameter()Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;->getServerProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->GLOBAL_CONFIG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {v11, v14, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/MessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateConfig: invalid url - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-direct {v10, v11, v1, v0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->invokeFailedCallback(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public updateIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;)V
    .locals 1
    .param p3    # Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "GlobalConfigUpdateClient"

    const-string p2, "No network available"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;->onFinished(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->updateIfNeededInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;)V

    return-void
.end method
