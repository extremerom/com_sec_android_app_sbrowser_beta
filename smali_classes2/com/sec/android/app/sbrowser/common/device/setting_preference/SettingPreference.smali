.class public Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/constants/preference/PreferenceKeys;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;
    .locals 2

    new-instance v0, Lf1/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    return-object v0
.end method

.method private static isRetailMode()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRetailMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public doNextUpdateCheck(Z)V
    .locals 1

    const-string v0, "update_check_enable"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public doesAntiTrackingLevelExist()Z
    .locals 1

    const-string v0, "anti_tracking_level"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAboutFragment(Z)Z
    .locals 1

    const-string v0, "about_settings"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getAntiTrackingAllowlistMajorVersion()I
    .locals 2

    const-string v0, "whitelist_major_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAntiTrackingAllowlistMinorVersion()I
    .locals 2

    const-string v0, "whitelist_minor_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAntiTrackingBlocklistVersion()I
    .locals 2

    const-string v0, "blacklist_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAntiTrackingDefaultLevel(Z)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "anti_tracking_default_secret_mode_level"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const-string p1, "anti_tracking_default_level"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAntiTrackingLevel(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingDefaultLevel(Z)I

    move-result p1

    const-string v0, "anti_tracking_secret_mode_level"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingDefaultLevel(Z)I

    move-result p1

    const-string v0, "anti_tracking_level"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAntiTrackingMetadataVersion()I
    .locals 2

    const-string v0, "metadata_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAutoCloseUnusedTabsClosedCount()I
    .locals 2

    const-string v0, "pref_auto_close_unused_tabs_closed_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAutoCloseUnusedTabsLastShownTime()J
    .locals 3

    const-string v0, "pref_auto_close_unused_tabs_last_shown_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBFCacheBlockedFeatures()Ljava/lang/String;
    .locals 2

    const-string v0, "bfcache_allowed_features"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBFCacheBlockedFeaturesVersion()F
    .locals 2

    const-string v0, "bfcache_allowed_features_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getBFCacheBlockedUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "bfcache_blocked_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBFCacheBlockedUrlVersion()Ljava/lang/Float;
    .locals 2

    const-string v0, "bfcache_blocked_url_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getBFCacheMetaDataVersion()I
    .locals 2

    const-string v0, "bfcache_metadata_version"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getBlockNoisyNotificationsEnabled()Z
    .locals 2

    const-string v0, "pref_block_noisy_notifications"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBookmarkWidgetIDPrefrence(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "bookmark_widget_ids"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedStringForMultiProcess(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBrowsingAssistAnimationCount()I
    .locals 2

    const-string v0, "pref_browsing_assist_animation_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getBrowsingAssistAppInfoLastCachedTime(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "browsing_assist_app_info_last_cached_time__"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBrowsingAssistSummaryStyle()I
    .locals 2

    const-string v0, "pref_browsing_assist_summary_style"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getClearBrowsingDataTimeRangeSpinnerSelectedIndex(I)I
    .locals 1

    const-string v0, "pref_clear_browsing_data_time_range_spinner_selected_index"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getCommonZoomValueDex()Ljava/lang/String;
    .locals 2

    const-string v0, "PREF_COMMON_ZOOM_VALUE_DEX"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCommonZoomValueMobile()Ljava/lang/String;
    .locals 2

    const-string v0, "PREF_COMMON_ZOOM_VALUE_MOBILE"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "current_version"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMultiTabMode(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "Grid"

    goto :goto_0

    :cond_0
    const-string p1, "List"

    :goto_0
    const-string v0, "pref_multi_tab_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDesktopWebsiteEnabledForMultiFold()I
    .locals 2

    const-string v0, "pref_desktop_website_for_multi_fold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getHistoryBixbyUpdate()Z
    .locals 2

    const-string v0, "pref_history_bixby_update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getImmediateClean()Z
    .locals 2

    const-string v0, "pref_privacy_immediate_clean"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getImmediatePrivacy()Z
    .locals 2

    const-string v0, "pref_privacy_immediate_privacy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIsNewSearchWidgetAdded(I)Z
    .locals 1

    const-string v0, "search_widget_is_new_widget_added"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIsNewWidgetAdded(I)Z
    .locals 1

    const-string v0, "is_new_widget_added"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBooleanForMultiProcess(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIsOldSearchWidgetUpdated()Z
    .locals 2

    const-string v0, "search_widget_old_preferences_updated"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getKeyCodeEnterPressed()Z
    .locals 2

    const-string v0, "pref_keycode_enter_pressed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getLastAllOffClean()I
    .locals 2

    const-string v0, "pref_privacy_alloff_clean"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastAllOffPrivacy()I
    .locals 2

    const-string v0, "pref_privacy_alloff_privacy"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastDarkMode()Z
    .locals 2

    const-string v0, "dark_mode_ondestroy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getLastDesktopMode(I)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "last_desktop_mode_instance%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getLastFixedTabMode(IZ)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "last_fixed_tab_mode_instance%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getLastLocale()Ljava/lang/String;
    .locals 2

    const-string v0, "locale_ondestroy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastONPrivacy()I
    .locals 2

    const-string v0, "pref_privacy_on_privacy"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastOnClean()I
    .locals 2

    const-string v0, "pref_privacy_on_clean"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "last_url_in_tab_ondestroy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiTabMode()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_multi_tab_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPATOneUIRequirement()I
    .locals 2

    const-string v0, "pref_pat_oneui_req"

    const v1, 0x11170

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPlaybackRateViewVisibility()Z
    .locals 2

    const-string v0, "pref_video_assistant_playback_speed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getPreviousVersion()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "previous_version"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateAccessTokenPreference(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "private_access_token_secret_mode"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "private_access_token"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getReadAloudAiBriefLaunchDomain()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_read_aloud_ai_brief_launch_domain"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReadAloudAiBriefLaunchTimestamp()J
    .locals 3

    const-string v0, "pref_read_aloud_ai_brief_launch_timestamp"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadAloudAiBriefTimestamp()J
    .locals 3

    const-string v0, "pref_read_aloud_ai_brief_timestamp"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadAloudLanguage()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_read_aloud_language"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReadAloudSpeechRate()F
    .locals 2

    const-string v0, "pref_read_aloud_speech_rate"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getReadAloudVoiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSaveRecentSearches()Z
    .locals 2

    const-string v0, "save_recent_searches"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSearchEngine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "current_search_engine_name"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchWidgetColorMode(II)I
    .locals 1

    const-string v0, "search_widget_color_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSearchWidgetMatchDarkMode(IZ)Z
    .locals 1

    const-string v0, "search_widget_match_dark_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSearchWidgetOldColorMode(I)I
    .locals 1

    const-string v0, "search_widget_color_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSearchWidgetOldMatchDarkMode(Z)Z
    .locals 1

    const-string v0, "search_widget_match_dark_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSearchWidgetOldShowRecentSearches(Z)Z
    .locals 1

    const-string v0, "search_widget_show_recent_searches"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSearchWidgetOldTransparency(I)I
    .locals 1

    const-string v0, "search_widget_transparency"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSearchWidgetShowRecentSearches(IZ)Z
    .locals 1

    const-string v0, "search_widget_show_recent_searches"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSearchWidgetTransparency(II)I
    .locals 1

    const-string v0, "search_widget_transparency"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSecureDownloadServiceEnabled()Z
    .locals 2

    const-string v0, "secure_download_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSettingsActivityRecreatedOnHCMChange()Z
    .locals 2

    const-string v0, "settings_activity_recreated_on_hcm_change"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getShouldMigrateTabGroup()Z
    .locals 2

    const-string v0, "pref_should_migrate_tab_group"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getShowDialogChooseTabView()Z
    .locals 2

    const-string v0, "pref_show_tab_view_choose_dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getStandardViewRecyclerViewDefaultPadding(I)I
    .locals 1

    const-string v0, "pref_foldable_standard_view_recyclerview_default_padding"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSummarizePopupUserLanguage()Ljava/lang/String;
    .locals 2

    const-string v0, "summarize_popup_user_language"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemFontDir()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "pref_system_font_dir"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextScale()F
    .locals 2

    const-string v0, "text_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getTransBarIsMoved()Z
    .locals 2

    const-string v0, "pref_trans_bar_is_moved"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getTransBarLastPosX()I
    .locals 2

    const-string v0, "pref_trans_bar_last_pos_x"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTransBarLastPosY()I
    .locals 2

    const-string v0, "pref_trans_bar_last_pos_y"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTransBarSplitScrollSyncEnabled()Z
    .locals 2

    const-string v0, "pref_trans_split_scroll_sync"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "SettingPreference"

    const-string v0, "TerraceHelper is not initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserLanguage(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, ""

    if-le p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "user_language%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "user_language"

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWidgetBackground(ZI)Z
    .locals 1

    const-string v0, "bookmark_widget_background_switch"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBooleanForMultiProcess(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getWidgetBackgroundShape(II)I
    .locals 1

    const-string v0, "widget_background_shape"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedIntForMultiProcess(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getWidgetColorMode(II)I
    .locals 1

    const-string v0, "color_mode"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedIntForMultiProcess(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getWidgetDarkMode(ZI)Z
    .locals 1

    const-string v0, "match_dark_mode"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBooleanForMultiProcess(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getWidgetOldColorMode(I)I
    .locals 1

    const-string v0, "color_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedIntForMultiProcess(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getWidgetOldMatchDarkMode(Z)Z
    .locals 1

    const-string v0, "match_dark_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBooleanForMultiProcess(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getWidgetOldTransparency(I)I
    .locals 1

    const-string v0, "widget_settings"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedIntForMultiProcess(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getWidgetTransparency(II)I
    .locals 1

    const-string v0, "widget_settings"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedIntForMultiProcess(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public hasDesktopWebsiteKey()Z
    .locals 1

    const-string v0, "pref_desktop_website"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAddOnsVisited()Z
    .locals 2

    const-string v0, "pref_add_ons_visited"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAllowThirdPartyCookiesEnabled()Z
    .locals 2

    const-string v0, "third_party_cookies"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isApplyDefaultDarkModeSettingsVisited()Z
    .locals 2

    const-string v0, "pref_apply_default_dark_mode_visited"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAutoCloseUnusedTabsSettingsVisited()Z
    .locals 2

    const-string v0, "pref_auto_close_unused_tabs_visited"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAutoHttpsUpgradeEnabled()Z
    .locals 2

    const-string v0, "pref_use_auto_https_upgrade"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAutoPlayEnabled()Z
    .locals 2

    const-string v0, "pref_auto_play_video"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBackUpAndRestoreDone()Z
    .locals 2

    const-string v0, "restore_back_up_done"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBlockAutoDownloadEnabled()Z
    .locals 2

    const-string v0, "block_auto_download"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBlockDeepLinkEnabled()Z
    .locals 2

    const-string v0, "pref_block_deeplink"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBlockPopupsEnabled()Z
    .locals 2

    const-string v0, "block_popups"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBlockUnwantedWebpagesAllowedBefore()Z
    .locals 2

    const-string v0, "block_unwanted_webpages_allowed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBlockUnwantedWebpagesEnabled()Z
    .locals 2

    const-string v0, "block_unwanted_webpages"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBookmarkSyncEnabled()Z
    .locals 2

    const-string v0, "sync_bookmarks_switch"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBrowsingAssistFTU()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isRetailMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "browsing_assist_first_time_use"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCloseAllTabsEnabled()Z
    .locals 2

    const-string v0, "pref_close_all_tabs"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCloseOptionAllTabsEnabled()Z
    .locals 2

    const-string v0, "close_option_all_tabs"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCloseOptionCacheEnabled()Z
    .locals 2

    const-string v0, "close_option_cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCloseOptionCookieEnabled()Z
    .locals 2

    const-string v0, "close_option_cookies_and_site_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCloseOptionEnabled()Z
    .locals 2

    const-string v0, "close_option"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCloseOptionHistoryEnabled()Z
    .locals 2

    const-string v0, "close_option_browsing_history"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isContentPushEnabled()Z
    .locals 2

    const-string v0, "marketing_information"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isContentsPushVisited()Z
    .locals 2

    const-string v0, "pref_contents_push_visit"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCookieEnabled()Z
    .locals 2

    const-string v0, "accept_cookies"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDesktopWebsiteEnabled()Z
    .locals 2

    const-string v0, "pref_desktop_website"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDesktopWebsiteForDexEnabled()Z
    .locals 2

    const-string v0, "pref_desktop_website_for_dex"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFirstInstalled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPreviousVersion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getCurrentVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirstTimeUseListModeOfTabManager()Z
    .locals 2

    const-string v0, "first_time_use_listmode_of_tabmanager"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isForceZoomEnabled()Z
    .locals 2

    const-string v0, "force_enable_zoom"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isGoToBottomEnabled()Z
    .locals 2

    const-string v0, "pref_go_to_bottom"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isGoToTopEnabled()Z
    .locals 2

    const-string v0, "pref_go_to_top"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isHideStatusBarEnabled()Z
    .locals 2

    const-string v0, "pref_hide_status_bar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isJavascriptEnabled()Z
    .locals 2

    const-string v0, "enable_javascript"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNeedUpdateCheck()Z
    .locals 2

    const-string v0, "update_check_enable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNotificationsVisited()Z
    .locals 2

    const-string v0, "show_n_badge_notification"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isOpenTabSyncEnabled()Z
    .locals 2

    const-string v0, "sync_open_tabs_switch"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPreferenceExist(Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPrivacyNoticeHistoryVisited()Z
    .locals 2

    const-string v0, "pref_privacy_notice_history_visited"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPrivacySettingsReset()Z
    .locals 2

    const-string v0, "pref_privacy_reset_settings"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isReadArticlesAloudEnabled()Z
    .locals 2

    const-string v0, "pref_read_articles_aloud"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isRetailMode()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isReaderModeSupported()Z
    .locals 5

    const-string v0, "pref_support_reader_mode_before"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "0"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPreviousVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-nez v3, :cond_0

    const-string v3, "SettingPreference"

    const-string v4, "[isReaderModeSupported] set true if browser is updated from previous version"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReaderModeSupported(Z)V

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    :cond_1
    const-string v0, "pref_support_reader_mode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSafeBrowsingUserOpted()Z
    .locals 2

    const-string v0, "safe_browsing_opt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSearchWidgetWithIdExists(I)Z
    .locals 1

    const-string v0, "search_widget_color_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "search_widget_transparency"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "search_widget_match_dark_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "search_widget_show_recent_searches"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSecretModeReset()Z
    .locals 2

    const-string v0, "reset_secret_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isShareIntentSelected()Z
    .locals 2

    const-string v0, "share_intent_launch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSmartTabDeleteSuggestionFirstTimeUse()Z
    .locals 2

    const-string v0, "pref_smart_tab_delete_suggestion_first_time_use"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSummarizeEnabled()Z
    .locals 2

    const-string v0, "pref_summarize"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isRetailMode()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSystemFontEnabled()Z
    .locals 2

    const-string v0, "pref_use_system_font"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isToolBarFixed()Z
    .locals 2

    const-string v0, "pref_fix_toolbar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranslatorEnabled(Z)Z
    .locals 1

    const-string v0, "pref_translator"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranslatorModeEnabled()Z
    .locals 2

    const-string v0, "translator_on_device_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isVideoAssistantEnabled()Z
    .locals 2

    const-string v0, "pref_new_video_assist"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isWifiSyncOnlySetting()Z
    .locals 2

    const-string v0, "wifi_sync_only"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public recordAddOnsVisit()V
    .locals 2

    const-string v0, "pref_add_ons_visited"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public recordApplyDefaultDarkModeSettingsVisited()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isApplyDefaultDarkModeSettingsVisited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_apply_default_dark_mode_visited"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public recordAutoCloseUnusedTabsClosedCount(I)V
    .locals 1

    const-string v0, "pref_auto_close_unused_tabs_closed_count"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public recordAutoCloseUnusedTabsSettingsVisited()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isAutoCloseUnusedTabsSettingsVisited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_auto_close_unused_tabs_visited"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public recordAutoClosedUnusedTabsLastShownTime(J)V
    .locals 1

    const-string v0, "pref_auto_close_unused_tabs_last_shown_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public recordContentsPushVisit()V
    .locals 2

    const-string v0, "pref_contents_push_visit"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public recordNotificationManagerVisit()V
    .locals 2

    const-string v0, "show_n_badge_notification"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public recordPrivacyNoticeHistoryVisit()V
    .locals 2

    const-string v0, "pref_privacy_notice_history_visited"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public recordSmartTabDeleteSuggestionFirstTimeUse()V
    .locals 2

    const-string v0, "pref_smart_tab_delete_suggestion_first_time_use"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeMatchDarkMode(I)V
    .locals 1

    const-string v0, "search_widget_match_dark_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public removeNewSearchWidgetPreferences(I)V
    .locals 1

    const-string v0, "search_widget_color_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "search_widget_transparency"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "search_widget_show_recent_searches"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "search_widget_is_new_widget_added"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public removePreferences(I)V
    .locals 1

    const-string v0, "color_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "widget_settings"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "match_dark_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "bookmark_widget_background_switch"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "is_new_widget_added"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "widget_background_shape"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public removeSearchWidgetOldPreferences()V
    .locals 1

    const-string v0, "search_widget_color_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "search_widget_transparency"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "search_widget_match_dark_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "search_widget_show_recent_searches"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public removeSearchWidgetWithIds(I)V
    .locals 1

    const-string v0, "search_widget_color_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "search_widget_transparency"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "search_widget_match_dark_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "search_widget_show_recent_searches"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public removeWidgetOldPreferences()V
    .locals 1

    const-string v0, "color_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "widget_settings"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "match_dark_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public saveImmediateClean(Z)V
    .locals 1

    const-string v0, "pref_privacy_immediate_clean"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveImmediatePrivacy(Z)V
    .locals 1

    const-string v0, "pref_privacy_immediate_privacy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveLastAllOffClean(I)V
    .locals 1

    const-string v0, "pref_privacy_alloff_clean"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastAllOffPrivacy(I)V
    .locals 1

    const-string v0, "pref_privacy_alloff_privacy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastOnClean(I)V
    .locals 1

    const-string v0, "pref_privacy_on_clean"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "(immediate) --- saveLastOnClean : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveLastOnPrivacy(I)V
    .locals 1

    const-string v0, "pref_privacy_on_privacy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAboutFragment(Z)V
    .locals 1

    const-string v0, "about_settings"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAllowThirdPartyCookiesEnabled(Z)V
    .locals 1

    const-string v0, "third_party_cookies"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAntiTrackingAllowlistMajorVersion(I)V
    .locals 1

    const-string v0, "whitelist_major_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAntiTrackingAllowlistMinorVersion(I)V
    .locals 1

    const-string v0, "whitelist_minor_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAntiTrackingBlocklistVersion(I)V
    .locals 1

    const-string v0, "blacklist_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAntiTrackingDefaultLevel(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "anti_tracking_default_secret_mode_level"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "anti_tracking_default_level"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setAntiTrackingLevel(ZI)V
    .locals 3

    const-string v0, "Standard"

    const-string v1, "Strict"

    const-string v2, "Off"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "anti_tracking_secret_mode_level"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    const-string p0, "0176"

    aget-object p1, v0, p2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "anti_tracking_level"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    const-string p0, "0076"

    aget-object p1, v0, p2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAntiTrackingMetadataVersion(I)V
    .locals 1

    const-string v0, "metadata_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setApplySettingsValue(Z)V
    .locals 1

    const-string v0, "apply_settings"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAutoHttpsUpgradeEnabled(Z)V
    .locals 1

    const-string v0, "pref_use_auto_https_upgrade"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAutoSigninEnabled(Z)V
    .locals 1

    const-string v0, "auto_signin"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAutoSigninEnabled(Z)V

    return-void
.end method

.method public setBFCacheBlockedFeatures(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bfcache_allowed_features"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBFCacheBlockedFeaturesVersion(F)V
    .locals 1

    const-string v0, "bfcache_allowed_features_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setBFCacheBlockedUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bfcache_blocked_url"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBFCacheBlockedUrlVersion(F)V
    .locals 1

    const-string v0, "bfcache_blocked_url_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setBFCacheMetadataVersion(I)V
    .locals 1

    const-string v0, "bfcache_metadata_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setBackUpAndRestoreDone(Z)V
    .locals 1

    const-string v0, "restore_back_up_done"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBlockAutoDownloadEnabled(Z)V
    .locals 1

    const-string v0, "block_auto_download"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockAutoDownloadEnabled(Z)V

    return-void
.end method

.method public setBlockDeepLinkEnabled(Z)V
    .locals 1

    const-string v0, "pref_block_deeplink"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBlockNoisyNotificationsEnabled(Z)V
    .locals 1

    const-string v0, "pref_block_noisy_notifications"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockNoisyNotificaitonsEnabled(Z)V

    return-void
.end method

.method public setBlockPopups(Z)V
    .locals 1

    const-string v0, "block_popups"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    xor-int/lit8 p0, p1, 0x1

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAllowPopupsEnabled(Z)V

    return-void
.end method

.method public setBlockUnwantedWebpages(Z)V
    .locals 1

    const-string v0, "block_unwanted_webpages"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockUnwantedWebpages(Z)V

    const/4 p1, 0x0

    const-string v0, "block_unwanted_webpages_allowed"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setBlockUnwantedWebpagesTemporarily(Z)V
    .locals 1

    const-string v0, "block_unwanted_webpages"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockUnwantedWebpages(Z)V

    return-void
.end method

.method public setBookmarkWidgetIDPreference(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bookmark_widget_ids"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBrowsingAssistAnimationCount(I)V
    .locals 1

    const-string v0, "pref_browsing_assist_animation_count"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setBrowsingAssistAppInfoLastCachedTime(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "browsing_assist_app_info_last_cached_time__"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setBrowsingAssistEnabled(Z)V
    .locals 1

    const-string v0, "pref_browsing_assist"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBrowsingAssistFTU(Z)V
    .locals 1

    const-string v0, "browsing_assist_first_time_use"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBrowsingAssistSummaryStyle(I)V
    .locals 1

    const-string v0, "pref_browsing_assist_summary_style"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setClearBrowsingDataTimeRangeSpinnerSelectedIndex(I)V
    .locals 1

    const-string v0, "pref_clear_browsing_data_time_range_spinner_selected_index"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCloseAllTabs(Z)V
    .locals 1

    const-string v0, "pref_close_all_tabs"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCloseOptionAllTabsEnabled(Z)V
    .locals 1

    const-string v0, "close_option_all_tabs"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCloseOptionEnabled(Z)V
    .locals 1

    const-string v0, "close_option"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCommonZoomValueDex(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PREF_COMMON_ZOOM_VALUE_DEX"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCommonZoomValueMobile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PREF_COMMON_ZOOM_VALUE_MOBILE"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentPushEnabled(Z)V
    .locals 1

    const-string v0, "marketing_information"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCookieEnabled(Z)V
    .locals 1

    const-string v0, "accept_cookies"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCurrentTabForSiteScreen(I)V
    .locals 1

    const-string v0, "currentTab"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrentVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "current_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDesktopWebsiteEnabled(Z)V
    .locals 1

    const-string v0, "pref_desktop_website"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFeedbackForm(Ljava/lang/String;)V
    .locals 1

    const-string v0, "feedback_form"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFirstTimeUseListModeOfTabManager(Z)V
    .locals 1

    const-string v0, "first_time_use_listmode_of_tabmanager"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHideStatusBar(Z)V
    .locals 1

    const-string v0, "pref_hide_status_bar"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHistoryBixbyUpdate(Z)V
    .locals 1

    const-string v0, "pref_history_bixby_update"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsNewSearchWidgetAdded(IZ)V
    .locals 1

    const-string v0, "search_widget_is_new_widget_added"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsNewWidgetAdded(IZ)V
    .locals 1

    const-string v0, "is_new_widget_added"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsOldSearchWidgetUpdated(Z)V
    .locals 1

    const-string v0, "search_widget_old_preferences_updated"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setKeyCodeEnterPressed(Z)V
    .locals 1

    const-string v0, "pref_keycode_enter_pressed"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastDarkMode(Z)V
    .locals 1

    const-string v0, "dark_mode_ondestroy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastDesktopMode(IZ)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "last_desktop_mode_instance%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastFixedTabMode(IZ)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "last_fixed_tab_mode_instance%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastLocale(Ljava/lang/String;)V
    .locals 1

    const-string v0, "locale_ondestroy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "last_url_in_tab_ondestroy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMultiTabMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_multi_tab_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationTAB(I)V
    .locals 1

    const-string v0, "notification_tab"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setNotificationURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "notification_url"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPATOneUIRequirement(I)V
    .locals 1

    const-string v0, "pref_pat_oneui_req"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setPermissionsFragment(Z)V
    .locals 1

    const-string v0, "pref_permissions"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPlaybackRateViewVisibility(Z)V
    .locals 1

    const-string v0, "pref_video_assistant_playback_speed"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPreviousVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "previous_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPrivacySettingsReset(Z)V
    .locals 1

    const-string v0, "pref_privacy_reset_settings"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPrivacyURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "privacy_url"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPrivateAccessToken(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "private_access_token_secret_mode"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "private_access_token"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setReadAloudAiBriefLaunchDomain(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_read_aloud_ai_brief_launch_domain"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReadAloudAiBriefLaunchTimestamp(J)V
    .locals 1

    const-string v0, "pref_read_aloud_ai_brief_launch_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setReadAloudAiBriefTimestamp(J)V
    .locals 1

    const-string v0, "pref_read_aloud_ai_brief_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setReadAloudLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_read_aloud_language"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReadAloudSpeechRate(F)V
    .locals 1

    const-string v0, "pref_read_aloud_speech_rate"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setReadAloudVoiceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReadAloudVoiceSetting(Ljava/lang/String;)V
    .locals 1

    const-string v0, "backup_read_aloud_voices_key"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReadArticlesAloudEnabled(Z)V
    .locals 1

    const-string v0, "pref_read_articles_aloud"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setReaderModeSupported(Z)V
    .locals 1

    const-string v0, "pref_support_reader_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSafeBrowsing(Z)V
    .locals 1

    const-string v0, "safe_browsing"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSafeBrowsingUserOpted(Z)V
    .locals 1

    const-string v0, "safe_browsing_opt"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSaveRecentSearches(Z)V
    .locals 1

    const-string v0, "save_recent_searches"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSaveSigninEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isAutoFillEnabled()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "remember_passwords"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setRememberPasswordsEnabled(Z)V

    return-void
.end method

.method public setSearchEngineString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "current_search_engine_name"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSearchWidgetColorMode(II)V
    .locals 1

    const-string v0, "search_widget_color_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setSearchWidgetMatchDarkMode(IZ)V
    .locals 1

    const-string v0, "search_widget_match_dark_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSearchWidgetShowRecentSearches(IZ)V
    .locals 1

    const-string v0, "search_widget_show_recent_searches"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSearchWidgetTransparency(II)V
    .locals 1

    const-string v0, "search_widget_transparency"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setSecretModeReset(Z)V
    .locals 1

    const-string v0, "reset_secret_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSettingsActivityRecreatedOnHCMChange(Z)V
    .locals 1

    const-string v0, "settings_activity_recreated_on_hcm_change"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShareIntentSelected(Z)V
    .locals 1

    const-string v0, "share_intent_launch"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShouldMigrateTabGroup(Z)V
    .locals 1

    const-string v0, "pref_should_migrate_tab_group"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShowDialogChooseTabView(Z)V
    .locals 1

    const-string v0, "pref_show_tab_view_choose_dialog"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setStandardViewRecyclerViewDefaultPadding(I)V
    .locals 1

    const-string v0, "pref_foldable_standard_view_recyclerview_default_padding"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setSummarizeEnabled(Z)V
    .locals 1

    const-string v0, "pref_summarize"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSummarizePopupUserLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "summarize_popup_user_language"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSystemFontDir(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_system_font_dir"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextScale(F)V
    .locals 1

    const-string v0, "text_scale"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setToolBarFixed(Z)V
    .locals 1

    const-string v0, "pref_fix_toolbar"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTransBarIsMoved(Z)V
    .locals 1

    const-string v0, "pref_trans_bar_is_moved"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTransBarLastPosX(I)V
    .locals 1

    const-string v0, "pref_trans_bar_last_pos_x"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setTransBarLastPosY(I)V
    .locals 1

    const-string v0, "pref_trans_bar_last_pos_y"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setTranslatorEnabled(Z)V
    .locals 1

    const-string v0, "pref_translator"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTranslatorModeEnabled(Z)V
    .locals 1

    const-string v0, "translator_on_device_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUserLanguage(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "user_language%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "user_language"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoAssistantEnabled(Z)V
    .locals 1

    const-string v0, "pref_new_video_assist"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWebPushNotificationEnabled(Z)V
    .locals 1

    const-string v0, "web_notification_state"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWidgetBackground(ZI)V
    .locals 1

    const-string v0, "bookmark_widget_background_switch"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWidgetBackgroundShape(II)V
    .locals 1

    const-string v0, "widget_background_shape"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setWidgetColorMode(II)V
    .locals 1

    const-string v0, "color_mode"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setWidgetDarkMode(ZI)V
    .locals 1

    const-string v0, "match_dark_mode"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWidgetTransparency(II)V
    .locals 1

    const-string v0, "widget_settings"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->generateWidgetPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method
