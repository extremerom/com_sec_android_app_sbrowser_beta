.class public abstract Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;,
        Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchMessage;
    }
.end annotation


# instance fields
.field private final mFeatureName:Ljava/lang/String;

.field private final mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    return-void
.end method

.method private getBaseFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBaseFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDataFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getDataFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getETagFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getETagFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearETag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "global_config_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getETagFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method public createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetchInternal(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final createFetchInternal(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;-><init>(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;)V

    return-object v0
.end method

.method public final getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getETag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "global_config_preference"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getETagFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getFieldTypeMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation
.end method

.method public final getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getLong(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVersion(Landroid/content/Context;)Ljava/lang/Long;
    .locals 2

    const-string v0, "global_config_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "version"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBaseFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final isSupport(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mGlobalConfigManager:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setETag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "global_config_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getETagFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeFeatureConfig(Landroid/content/Context;Lorg/json/JSONObject;Z)Z
    .locals 11

    const-string v0, "support"

    const-string v1, "version"

    const-string v2, "GlobalConfigFeature"

    const-string v3, "global_config_preference"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBaseFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const-wide/16 v9, 0x0

    invoke-interface {v3, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long p3, v7, v9

    if-nez p3, :cond_0

    return v1

    :cond_0
    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBaseFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v5, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getFieldTypeMap()Ljava/util/Map;

    move-result-object p3

    :try_start_2
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$1;->$SwitchMap$com$sec$android$app$sbrowser$common$model$global_config$FieldType:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v1, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getDataFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getDataFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v5, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getDataFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getDataFieldPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get field from config json: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->onFeatureConfigUpdated(Landroid/content/Context;)V

    return v1

    :catch_1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->onFeatureConfigUpdated(Landroid/content/Context;)V

    return v1

    :cond_6
    const-string p0, "Failed to get data from config json"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_2
    const-string p0, "Failed to get support from config json"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_3
    const-string p0, "Failed to get version from config json"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
