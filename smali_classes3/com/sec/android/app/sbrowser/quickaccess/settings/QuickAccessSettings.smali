.class public Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "quickaccess_preferences"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;
    .locals 2

    new-instance v0, Lt0/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lt0/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    return-object v0
.end method

.method private getLastRequestedTimestamp()J
    .locals 3

    const-string v0, "quickaccess_last_requested_timestamp"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public clearQuickAccessPendingUpdate()V
    .locals 2

    const-string v0, "quickaccess_pending_update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getClientBaseMs()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getClientBase()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getCurrentServerProfile()Ljava/lang/String;
    .locals 2

    const-string v0, "quickaccess_server_profile"

    const-string v1, "product"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugClientId()Ljava/lang/String;
    .locals 2

    const-string v0, "debug_client_id"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastFailedTimeMillis()J
    .locals 3

    const-string v0, "quickaccess_last_failed_time"

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivacyBoardLastShownState()I
    .locals 2

    const-string v0, "quickaccess_privacy_board_last_shown_state"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getQuickAccessV2MigrationIsCompleted()Z
    .locals 2

    const-string v0, "quick_access_v2_migration"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSyncGroupItemListVisibility(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quickaccess_sync_group_item_list_visibility_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getUrlMigrationEtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quickaccess_url_migration_etag_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasQuickAccessPendingUpdate()Z
    .locals 2

    const-string v0, "quickaccess_pending_update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public initializePreferencesValues()V
    .locals 1

    const-string v0, "quickaccess_last_requested_timestamp"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public isDebugClientIdEdited()Z
    .locals 2

    const-string v0, "debug_client_id_is_edited"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDefaultItemsEdited()Z
    .locals 2

    const-string v0, "quickaccess_is_client_changed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFirstQuickAccessRequest()Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getLastRequestedTimestamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLastRequestFailed()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getLastFailedTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public removeUrlMigrationEtag(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quickaccess_url_migration_etag_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentServerProfile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "quickaccess_server_profile"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugClientId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "debug_client_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugClientIdEdited(Z)V
    .locals 1

    const-string v0, "debug_client_id_is_edited"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultItemsEdited(Z)V
    .locals 1

    const-string v0, "quickaccess_is_client_changed"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastFailedTimeMillis(J)V
    .locals 1

    const-string v0, "quickaccess_last_failed_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLastRequestedTimestamp(J)V
    .locals 1

    const-string v0, "quickaccess_last_requested_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setPrivacyBoardLastShownState(I)V
    .locals 1

    const-string v0, "quickaccess_privacy_board_last_shown_state"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setQuickAccessBackupRestoreDeviceId()V
    .locals 2

    const-string v0, "quickaccess_backup_restore_deviceId"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistStringSync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setQuickAccessPendingUpdate()V
    .locals 2

    const-string v0, "quickaccess_pending_update"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setQuickAccessV2MigrationIsCompleted(Z)V
    .locals 1

    const-string v0, "quick_access_v2_migration"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSyncGroupItemListVisibility(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quickaccess_sync_group_item_list_visibility_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setUrlMigrationEtag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quickaccess_url_migration_etag_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
