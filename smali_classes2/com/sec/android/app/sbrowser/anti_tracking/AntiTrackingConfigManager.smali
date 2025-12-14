.class public Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$LazyHolder;,
        Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;
    }
.end annotation


# static fields
.field static final ALLOWLIST_FETCH_FAILCODE:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final BLOCKLIST_FETCH_FAILCODE:I = 0x4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final METADATA_SET_SUCCESSCODE:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field private mFailureCode:I

.field private mGcAllowlistMajorVersion:I

.field private mGcAllowlistMinorVersion:I

.field private mGcBlocklistVersion:I

.field private mGcMetadataVersion:I

.field private mIsNativeInitialized:Z

.field private mMetadataJson:Lorg/json/JSONObject;

.field private mMetadataVersionUpdateRequired:Z

.field private mSuccessCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->initializePreferencesValues()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mSuccessCode:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mMetadataJson:Lorg/json/JSONObject;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mSuccessCode:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->onMetadataFetchFailed(Ljava/lang/String;)V

    return-void
.end method

.method private static getFilePath(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$4;->$SwitchMap$com$sec$android$app$sbrowser$anti_tracking$AntiTrackingConstants$ListType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants;->BLOCKLIST_FILE_PATH:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants;->ALLOWLIST_FILE_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    move-result-object v0

    return-object v0
.end method

.method private initializePreferencesValues()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const-string v0, "referrer_whitelist_version"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onFinishedProcessingGCUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mMetadataVersionUpdateRequired:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mFailureCode:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcMetadataVersion:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingMetadataVersion(I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[IAT] Finished processing GC "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mFailureCode:I

    const-string v1, "AntiTrackingConfigManager"

    invoke-static {v0, p0, v1}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private onFinishedProcessingListUpdate(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->setList(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mSuccessCode:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const-string p1, "AntiTrackingConfigManager"

    const-string v0, "[IAT] Finished processing lists "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    :cond_0
    return-void
.end method

.method private onMetadataFetchFailed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AntiTrackingConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mFailureCode:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mFailureCode:I

    sget-object p1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->METADATA_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    return-void
.end method

.method private setDefaultSatLevels()V
    .locals 5

    const-string v0, "AntiTrackingConfigManager"

    const-string v1, "Default SAT level from GC in Normal mode: "

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mMetadataJson:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v2, "feature_prefs"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "tracking_protection"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "setting_default_level"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingDefaultLevel(ZI)V

    const-string v3, "secret_mode_setting_default_level"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingDefaultLevel(ZI)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , in Secret mode: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested key not found error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setList(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$4;->$SwitchMap$com$sec$android$app$sbrowser$anti_tracking$AntiTrackingConstants$ListType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->getFilePath(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->setBlocklist(Ljava/lang/String;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mSuccessCode:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mSuccessCode:I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->getFilePath(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->setAllowlist(Ljava/lang/String;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mSuccessCode:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mSuccessCode:I

    :goto_0
    return-void
.end method

.method private updateAllowlistIfRequired()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mMetadataJson:Lorg/json/JSONObject;

    const-string v1, "whitelist-major-version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcAllowlistMajorVersion:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mMetadataJson:Lorg/json/JSONObject;

    const-string v1, "whitelist-minor-version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcAllowlistMinorVersion:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingAllowlistMajorVersion()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingAllowlistMinorVersion()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcAllowlistMajorVersion:I

    if-gt v2, v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcAllowlistMinorVersion:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->fetchAllowlist()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_NOT_UPDATED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Metadata Read Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiTrackingConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    :goto_2
    return-void
.end method

.method private updateBlocklistIfRequired()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mMetadataJson:Lorg/json/JSONObject;

    const-string v1, "blacklist-version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcBlocklistVersion:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingBlocklistVersion()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcBlocklistVersion:I

    if-gt v1, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->BLOCKLIST_NOT_UPDATED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->fetchBlocklist()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Metadata Read Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiTrackingConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->BLOCKLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    :goto_1
    return-void
.end method

.method private updateCsCookieExpireEnableState()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cs-cookie-expire-enabled"

    const/4 v2, 0x1

    const-string v3, "AntiTracking"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setCsCookieCapExpireEnabled(Z)V

    return-void
.end method

.method private updateCsCookieExpireTime()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cs-cookie-expire-time"

    const/4 v2, 0x7

    const-string v3, "AntiTracking"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setCsCookieCapExpireTime(I)V

    return-void
.end method

.method private updateEnableStateFromGlobalConfig()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->isAntiTrackingEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[IAT] GC support = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AntiTrackingConfigManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateListsIfRequired()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mMetadataJson:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "AntiTrackingConfigManager"

    const-string v1, "Metadata not valid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->BLOCKLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updateAllowlistIfRequired()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updateBlocklistIfRequired()V

    return-void
.end method

.method private updateMetadataIfRequired()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->isAntiTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "metadata-version"

    const/4 v3, 0x0

    const-string v4, "AntiTracking"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcMetadataVersion:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingMetadataVersion()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcMetadataVersion:I

    if-gt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->setLists()V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mMetadataVersionUpdateRequired:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->fetchMetadata()V

    return-void
.end method

.method private updatePairWiseAutomaticStorageAccessState()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "automatic-storage-access-state"

    const/4 v2, 0x2

    const-string v3, "AntiTracking"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAutomaticStorageAccessState(I)V

    return-void
.end method

.method private updateThirdPartyCookieBlockingFlag()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "enable-third-party-cookie-blocking"

    const/4 v2, 0x0

    const-string v3, "AntiTracking"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingThirdPartyCookieBlockingEnabled(Z)V

    return-void
.end method

.method private updateUserActivationThreshold()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activation-threshold"

    const/16 v2, 0x1e

    const-string v3, "AntiTracking"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingActivationThreshold(I)V

    return-void
.end method


# virtual methods
.method public fetchAllowlist()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;->ALLOWLIST:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->getFilePath(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$2;-><init>(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;)V

    const-string p0, "whitelist-file"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher;->fetchDataFile(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;)V

    return-void
.end method

.method public fetchBlocklist()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;->BLOCKLIST:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->getFilePath(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$3;-><init>(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;)V

    const-string p0, "blacklist-file"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher;->fetchDataFile(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;)V

    return-void
.end method

.method public fetchMetadata()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants;->METADATA_FILE_PATH:Ljava/lang/String;

    new-instance v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$1;-><init>(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;)V

    const-string p0, "metadata-file"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher;->fetchDataFile(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;)V

    return-void
.end method

.method public isAntiTrackingEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->isAntiTrackingEnabledByGlobalConfig()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "EnableAntiTracking"

    invoke-static {p0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAntiTrackingEnabledByGlobalConfig()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "AntiTracking"

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onFeatureConfigUpdated()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mIsNativeInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    return-void
.end method

.method public onNativeInitialized()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mIsNativeInitialized:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    return-void
.end method

.method public processConfigUpdateState()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$4;->$SwitchMap$com$sec$android$app$sbrowser$anti_tracking$AntiTrackingConfigManager$ConfigFetchState:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->onFinishedProcessingGCUpdate()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mFailureCode:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mFailureCode:I

    :pswitch_2
    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;->BLOCKLIST:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->onFinishedProcessingListUpdate(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcBlocklistVersion:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingBlocklistVersion(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;->BLOCKLIST:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->onFinishedProcessingListUpdate(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)V

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mFailureCode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mFailureCode:I

    :pswitch_5
    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;->ALLOWLIST:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->onFinishedProcessingListUpdate(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcAllowlistMajorVersion:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingAllowlistMajorVersion(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mGcAllowlistMinorVersion:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingAllowlistMinorVersion(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;->ALLOWLIST:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->onFinishedProcessingListUpdate(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->setLists()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->setDefaultSatLevels()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updateListsIfRequired()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updateEnableStateFromGlobalConfig()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updateThirdPartyCookieBlockingFlag()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updateUserActivationThreshold()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updatePairWiseAutomaticStorageAccessState()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updateCsCookieExpireEnableState()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updateCsCookieExpireTime()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->updateMetadataIfRequired()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setLists()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;->ALLOWLIST:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->setList(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;->BLOCKLIST:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->setList(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    return-void
.end method
