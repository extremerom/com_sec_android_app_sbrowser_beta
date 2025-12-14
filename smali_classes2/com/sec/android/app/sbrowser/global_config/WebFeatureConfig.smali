.class public Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;
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

.field private mIsNativeInitialized:Z

.field private mIsWebFeatureNativePrefUpdatePending:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "WebFeatureConfig"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->mFieldTypeMap:Ljava/util/Map;

    const-string p0, "geolocation_allowed_url_list"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->BOOLEAN:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "wcg_enabled"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "storage_access_api_enabled"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->INT:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v2, "storage_access_api_implicit_grant_limit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cross_browsing_window_name_clearing_enabled"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "text_autosizer_policy"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getGeolocationAllowedList(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "geolocation_allowed_url_list"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStorageAccessImplicitGrantLimit(Landroid/content/Context;)I
    .locals 2

    const-string v0, "storage_access_api_implicit_grant_limit"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getTextAutoSizerPolicy(Landroid/content/Context;)I
    .locals 2

    const-string v0, "text_autosizer_policy"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private isCrossBrowsingWindowNameClearingEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "cross_browsing_window_name_clearing_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isGeolocationAllowedSupport(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->isSupport(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isStorageAccessApiSupported(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "storage_access_api_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private setCommandLineSwitches(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->isCrossBrowsingWindowNameClearingEnabled(Landroid/content/Context;)Z

    move-result p0

    const-string p1, "cross-browsing-window-name-clearing-enabled-gc"

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/TerraceCommandLine;->removeSwitch(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNativePrefs(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->isStorageAccessApiSupported(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setStorageAccessApiGlobalConfigSetting(Z)V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 4

    const-string v0, "WebFeatureConfig"

    const-string v1, "onFeatureConfigUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "geolocation.allowed_enabled"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->isGeolocationAllowedSupport(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "geolocation.allowed_list"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->getGeolocationAllowedList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "wcg_enabled"

    invoke-virtual {p0, p1, v3, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "wcg.enabled"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "storage_access_api.enabled"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->isStorageAccessApiSupported(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "storage_access_api.implicit_grant_limit"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->getStorageAccessImplicitGrantLimit(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_autosizer_policy"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->getTextAutoSizerPolicy(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->mIsNativeInitialized:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->setNativePrefs(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->setCommandLineSwitches(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->mIsWebFeatureNativePrefUpdatePending:Z

    :goto_0
    return-void
.end method

.method public onNativeInitialized(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->mIsNativeInitialized:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->setCommandLineSwitches(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->mIsWebFeatureNativePrefUpdatePending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->setNativePrefs(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->mIsWebFeatureNativePrefUpdatePending:Z

    :cond_0
    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    const-string p0, "WebFeatureConfig"

    const-string p1, "onUpdateFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
