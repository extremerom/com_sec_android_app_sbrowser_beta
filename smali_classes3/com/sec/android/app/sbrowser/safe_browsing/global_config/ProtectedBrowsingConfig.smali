.class public Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;
.super Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;
.source "SourceFile"


# instance fields
.field private final mFieldTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "ProtectedBrowsing"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->mFieldTypeMap:Ljava/util/Map;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->BOOLEAN:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "opt-in"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "safetynet-api-key"

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "safer_update_api_enabled"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->LONG:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v2, "safer_threatlist_get_update_sec_period"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "safer_threatlist_fetch_update_sec_period"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->INT:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v2, "safer_max_update_entries"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "safer_max_database_entries"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fake_enabled"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFieldTypeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public getMaxDatabaseEntries(Landroid/content/Context;)I
    .locals 2

    const-string v0, "safer_max_database_entries"

    const/16 v1, 0x800

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMaxUpdateEntries(Landroid/content/Context;)I
    .locals 2

    const-string v0, "safer_max_update_entries"

    const/16 v1, 0x800

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSafetyNetApiKeys(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "safetynet-api-key"

    const-string v1, "0"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThreatListFetchUpdateSecPeriod(Landroid/content/Context;)J
    .locals 3

    const-string v0, "safer_threatlist_fetch_update_sec_period"

    const-wide/32 v1, 0x15180

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getThreatListGetUpdateSecPeriod(Landroid/content/Context;)J
    .locals 3

    const-string v0, "safer_threatlist_get_update_sec_period"

    const-wide/32 v1, 0x15180

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public isFakeEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "fake_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isOptIn(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "opt-in"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isUpdateApiEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "safer_update_api_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->onFeatureConfigUpdated(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
