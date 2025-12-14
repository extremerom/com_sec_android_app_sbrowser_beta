.class public Lcom/sec/android/app/sbrowser/common/device/DebugSettings;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/DebugPreferenceKeys;


# static fields
.field private static sIsSARTEnabled:Z = false


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "debug_preferences"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFeatureVariationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setFeatureVariationTestValues()V

    :cond_0
    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;-><init>()V

    return-object v0
.end method

.method public static getFeatureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    return-object v0
.end method

.method public static isTypeOther(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public alwaysShowReaderIcon()Z
    .locals 2

    const-string v0, "pref_reader_mode_debug_always_show_reader_icon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public emulateFolderDevice()Z
    .locals 2

    const-string v0, "pref_emulate_folder_device"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public enableReaderDetectionForContentUrls()Z
    .locals 2

    const-string v0, "pref_reader_mode_debug_enable_reader_detection_for_content_urls"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public forceSetSamrtSwitchDataAvailabeInSamsungPass()Z
    .locals 2

    const-string v0, "pref_force_set_smartswitch_data_available_in_samsung_pass"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getAddedSampleCountForAutofill()I
    .locals 2

    const-string v0, "pref_set_added_sample_count_for_autofill"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAiSummarizeBackend()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_ai_summarize_backend"

    const-string v1, "scs cloud"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAiSummarizeLevel()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_ai_summarize_level"

    const-string v1, "AUTO"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAiSummarizeTokenizer()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_ai_summarize_tokenizer"

    const-string v1, "opennlp"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBoardingPassAllowlist()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_boarding_pass_allowlist"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChameleonUsed()Z
    .locals 2

    const-string v0, "csc_feature_common_usechameleon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getChangeWallpaperServerProfile()Ljava/lang/String;
    .locals 2

    const-string v0, "change_wallpaper_server_profile"

    const-string v1, "product"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentBlockerTestConfigTimestamp()Ljava/lang/String;
    .locals 2

    const-string v0, "content_blocker_test_config_timestamp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    const-string v0, "country_code"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Other"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "country_code_backup"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCountryCodeValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFeatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountryIsoCode()Ljava/lang/String;
    .locals 3

    const-string v0, "country_iso_code"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Other"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "country_iso_code_backup"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCountryIsoCodeValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFeatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCscHomepageURL()Ljava/lang/String;
    .locals 2

    const-string v0, "csc_feature_web_sethomepageurl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCscUserAgent()Ljava/lang/String;
    .locals 2

    const-string v0, "csc_feature_web_setuseragent"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getCustomUA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataLakeServerProfile()Ljava/lang/String;
    .locals 2

    const-string v0, "data_lake_server_profile"

    const-string v1, "product"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugHelpIntroPpMajorVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_help_intro_major_version_pp"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugHelpIntroPpMinorVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_help_intro_minor_version_pp"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugHelpIntroRegionCode()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_help_intro_region_code"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugHelpIntroTosMajorVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_help_intro_major_version_tos"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugHelpIntroTosMinorVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_help_intro_minor_version_tos"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugMaximumTabCountLimit()I
    .locals 2

    const-string v0, "pref_maximum_tab_count_limit"

    const/16 v1, 0x63

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDisableAllSearchEngineExceptGoogle()Z
    .locals 2

    const-string v0, "csc_feature_web_disableallsearchengineexceptgoogle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getEnableSurveyMode()Z
    .locals 2

    const-string v0, "floating_feature_contextservice_enable_survey_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFakeActivatedId()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_fake_aid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFakeId()Ljava/lang/String;
    .locals 2

    const-string v0, "floating_feature_web_setfakeid"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getFakeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFakeMccMnc()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_fake_mccmnc"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFakeSpCode()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_fake_spcode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFakeSpName()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_fake_spname"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFakeSubsetCode()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_debug_fake_subsetcode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureVariationEnabled()Z
    .locals 2

    const-string v0, "enable_feature_variation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getImsConfigMdmnType()Ljava/lang/String;
    .locals 2

    const-string v0, "csc_feature_ims_config_mdmn_type"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLoadedCsc()Ljava/lang/String;
    .locals 2

    const-string v0, "loaded_csc"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxRichEntity()I
    .locals 2

    const-string v0, "max_rich_entity_item"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNewsFeedServerProfile()Ljava/lang/String;
    .locals 2

    const-string v0, "news_feed_server_profile"

    const-string v1, "product"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNightDimGain()I
    .locals 2

    const-string v0, "pref_night_dim_gain"

    const/16 v1, 0x4b

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPromotionProfile()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "pref_promotion_debug_profile"

    const-string v1, "SERVER"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPromptToExitEnabled()Z
    .locals 2

    const-string v0, "csc_feature_web_enableprompttoexit"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getQuickAccessMaskableConfig()Ljava/lang/String;
    .locals 2

    const-string v0, "quickaccess_masking_config"

    const-string v1, "gap8"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestPermissionReadStorage()Z
    .locals 2

    const-string v0, "request_permission_read_storage"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getRichEntityPosition()I
    .locals 2

    const-string v0, "position_of_rich_entity"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSaferBrowsingServerProfile()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "pref_safer_browsing_debug_server_profile"

    const-string v1, "product"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 3

    const-string v0, "sales_code"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Other"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "sales_code_backup"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSalesCodeValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFeatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportDetailBrightness()Z
    .locals 2

    const-string v0, "floating_feature_lcd_support_detail_brightness"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getTemporarilyUnblockAdsSupported()Ljava/lang/String;
    .locals 2

    const-string v0, "default"

    const-string v1, "support_content_blocker_temporarily_unblock_ads"

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUseNightDimEnabled()Z
    .locals 2

    const-string v0, "pref_use_night_dim"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAddToNoteEnabled()Z
    .locals 2

    const-string v0, "pref_enable_add_to_note"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAiVideoSummarizeEnabled()Z
    .locals 2

    const-string v0, "enable_video_summarize"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBlocklistSaveInSamsungPassEnabled()Z
    .locals 2

    const-string v0, "pref_enable_blocklist_save_in_samsung_pass"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isChangeUARefresh()Z
    .locals 2

    const-string v0, "enable_change_ua_refresh"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isContentBlockerSupported()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isCnApk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "support_content_blocker"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isContentBlockerTestConfigUsed()Z
    .locals 2

    const-string v0, "content_blocker_use_test_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCreditCardAuthenticationDisabled()Z
    .locals 2

    const-string v0, "pref_credit_card_authentication_flag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCustomTabFeatureLoggingEnabled()Z
    .locals 2

    const-string v0, "pref_enable_custom_tab_feature_logging"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCustomTabFindOnPageOptionMenuEnabled()Z
    .locals 2

    const-string v0, "pref_enable_custom_tab_find_on_page_option_menu"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDataLakeLogEnabled()Z
    .locals 2

    const-string v0, "enable_data_lake_log"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDebugAiBriefIgnoreInterval()Z
    .locals 2

    const-string v0, "pref_enable_debug_ai_brief_ignore_interval"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDebugEnableResultView()Z
    .locals 2

    const-string v0, "pref_enable_debug_result_view"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDebugOpenDocumentEnabled()Z
    .locals 2

    const-string v0, "pref_debug_open_document"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDebugReadAloudTranslationEnabled()Z
    .locals 2

    const-string v0, "pref_enable_debug_read_aloud_translation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDebugReadArticlesAloudUnlimitCount()Z
    .locals 2

    const-string v0, "pref_enable_debug_read_articles_aloud_unlimit_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDebugTss2Activated()Z
    .locals 2

    const-string v0, "pref_debug_tss2_activated"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFaceDisabled()Z
    .locals 2

    const-string v0, "pref_disable_face_by_force"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFaceRegisteredForSherlock()Z
    .locals 2

    const-string v0, "pref_enable_face_for_sherlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFingerprintDisabled()Z
    .locals 2

    const-string v0, "pref_disable_fingerprint_by_force"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFingerprintRegisteredForSherlock()Z
    .locals 2

    const-string v0, "pref_enable_fingerprint_for_sherlock"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFolderClosed()Z
    .locals 2

    const-string v0, "pref_close_folder_device"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isForceEnableDonation()Z
    .locals 2

    const-string v0, "pref_force_app_search_donation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isHelpIntroEnabled()Z
    .locals 2

    const-string v0, "pref_enable_help_intro"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isHelpMeWriteDebugOptionEnabled()Z
    .locals 2

    const-string v0, "pref_enable_help_me_write_debug_option"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isHtmlMediaSourceDisabled()Z
    .locals 2

    const-string v0, "disable_html_media_source"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIntelligentScanDisabled()Z
    .locals 2

    const-string v0, "pref_disable_intelligent_scan_by_force"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIntelligentScanRegisteredForSherlock()Z
    .locals 2

    const-string v0, "pref_enable_intelligent_scan_for_sherlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIrisDisabled()Z
    .locals 2

    const-string v0, "pref_disable_iris_by_force"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIrisRegisteredForSherlock()Z
    .locals 2

    const-string v0, "pref_enable_iris_for_sherlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNewsFeedInQuickAccessDebugEnabled()Z
    .locals 2

    const-string v0, "enable_news_feed_in_quick_access"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPagetransSplitMode()Z
    .locals 2

    const-string v0, "enable_pagetrans_split"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isParentalControlEnabled()Z
    .locals 2

    const-string v0, "pref_parental_control_enable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPartialCustomTabEnabled()Z
    .locals 2

    const-string v0, "pref_enable_partial_custom_tab"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPartialCustomTabSideSheetEnabled()Z
    .locals 2

    const-string v0, "pref_enable_partial_custom_tab_side_sheet"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPromotionEnabled()Z
    .locals 2

    const-string v0, "pref_promotion_debug_enable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPromotionInstantMode()Z
    .locals 2

    const-string v0, "pref_promotion_debug_instant_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPromotionToastMessageEnabled()Z
    .locals 2

    const-string v0, "pref_promotion_debug_toast_message"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isQuickAccessAddWebEnabled()Z
    .locals 2

    const-string v0, "enable_quickaccess_add_web"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isQuickAccessMaskableIconEnabled()Z
    .locals 1

    const-string v0, "none"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getQuickAccessMaskableConfig()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isQuickAccessSyncEnabled()Z
    .locals 2

    const-string v0, "enable_quickaccess_sync_v2"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isRedirectSkipEnabled()Z
    .locals 2

    const-string v0, "pref_support_redirect_skip"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isResultViewAIEnabled()Z
    .locals 2

    const-string v0, "pref_show_result_view_AI"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isRichEntityEnabled()Z
    .locals 2

    const-string v0, "enable_rich_entity"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isRichEntityTestMode()Z
    .locals 2

    const-string v0, "enable_rich_entity_test"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSALoggingDebugFlagEnabled()Z
    .locals 2

    const-string v0, "pref_enable_sa_logging_debug_flag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSARTEnabled()Z
    .locals 0

    sget-boolean p0, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->sIsSARTEnabled:Z

    return p0
.end method

.method public isSILogHistoryEnabled()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "pref_enable_si_logging_debug_history"

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public isSILogToastEnabled()Z
    .locals 2

    const-string v0, "pref_enable_si_logging_debug_toast"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSaferBrowsingEnabled()Z
    .locals 2

    const-string v0, "pref_safer_browsing_debug_enable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSaferBrowsingLogEnabled()Z
    .locals 2

    const-string v0, "pref_safer_browsing_debug_log_enable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSaferBrowsingMinimumWaitDurationEnabled()Z
    .locals 2

    const-string v0, "pref_safer_browsing_debug_minimum_wait_duration_enable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSamsungPassDisabled()Z
    .locals 0

    const-string p0, "disable-samsung-pass"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSaveWebpageTestModeEnabled()Z
    .locals 2

    const-string v0, "enable_save_webpage_test_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isShowSmallestDp()Z
    .locals 2

    const-string v0, "pref_show_smallest_dp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isShowSyncInformationEnabled()Z
    .locals 2

    const-string v0, "enable_show_sync_information"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isShowTabButtonIdEnabled()Z
    .locals 2

    const-string v0, "pref_enable_show_tab_button_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isShowingUsernameInPasswordUpdatePopupEnabled()Z
    .locals 2

    const-string v0, "pref_enable_to_show_username_in_password_update_popup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTabBarScrollButtonEnabled()Z
    .locals 2

    const-string v0, "pref_enable_show_tab_bar_scroll_button"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTabManagerNewGuiEnabled()Z
    .locals 2

    const-string v0, "pref_show_tab_manager_new_gui"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTransCaption()Z
    .locals 2

    const-string v0, "pref_enable_trans_caption"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTransbarPopupType()Z
    .locals 2

    const-string v0, "pref_enable_trans_bar_popup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isUpdateCardEnabled()Z
    .locals 2

    const-string v0, "pref_debug_flag_update_card"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isVAGestureButtonEnabled()Z
    .locals 2

    const-string v0, "enable_va_gesture_button"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isVANextButtonEnabled()Z
    .locals 2

    const-string v0, "enable_va_next_button"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isWebLoginForceEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useMockPasswordForm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "pref_enable_web_login_by_force"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public resetFakeSimSetting()V
    .locals 1

    const-string v0, "pref_debug_fake_aid"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "pref_debug_fake_mccmnc"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "pref_debug_fake_spname"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "pref_debug_fake_spcode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "pref_debug_fake_subsetcode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public setAAABaitElementDetectionEnabled(Z)V
    .locals 1

    const-string v0, "enable_aaa_bait_element_detection"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAAABaitJavascriptDetectionEnabled(Z)V
    .locals 1

    const-string v0, "enable_aaa_bait_javascript_detection"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAddedSampleCountForAutofill(I)V
    .locals 1

    const-string v0, "pref_set_added_sample_count_for_autofill"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setBoardingPassAllowlist(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_boarding_pass_allowlist"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChameleonUsed(Z)V
    .locals 1

    const-string v0, "csc_feature_common_usechameleon"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->setUseChameleon(Z)V

    return-void
.end method

.method public setContentBlockerSupported(Z)V
    .locals 1

    const-string v0, "support_content_blocker"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setContentBlockerTestConfigTimestamp(Ljava/lang/String;)V
    .locals 1

    const-string p1, "content_blocker_test_config_timestamp"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "country_code"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INDIA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setUPIVPAEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setUPIVPAEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setCountryIsoCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "country_iso_code"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCscHomepageURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "csc_feature_web_sethomepageurl"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->setCscHomepageURL(Ljava/lang/String;)V

    return-void
.end method

.method public setCscUserAgent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "csc_feature_web_setuseragent"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->setCustomUA(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSaverDummyDataEnabled(Z)V
    .locals 1

    const-string v0, "enable_data_saver_dummy_data"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDebugHelpIntroPpMajorVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_help_intro_major_version_pp"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugHelpIntroPpMinorVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_help_intro_minor_version_pp"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugHelpIntroRegionCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_help_intro_region_code"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugHelpIntroTosMajorVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_help_intro_major_version_tos"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugHelpIntroTosMinorVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_help_intro_minor_version_tos"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMaximumTabCountLimit(I)V
    .locals 1

    const-string v0, "pref_maximum_tab_count_limit"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setDisableAllSearchEngineExceptGoogle(Z)V
    .locals 1

    const-string v0, "csc_feature_web_disableallsearchengineexceptgoogle"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->setDisableAllSearchEngineExceptGoogle(Z)V

    return-void
.end method

.method public setEnableSurveyMode(Z)V
    .locals 1

    const-string v0, "floating_feature_contextservice_enable_survey_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->setSurveyModeEnabled(Z)V

    return-void
.end method

.method public setFakeActivatedId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_fake_aid"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFakeId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "floating_feature_web_setfakeid"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->setFakeId(Ljava/lang/String;)V

    return-void
.end method

.method public setFakeMccMnc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_fake_mccmnc"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFakeSpCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_fake_spcode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFakeSpName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_fake_spname"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFakeSubsetCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_debug_fake_subsetcode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFeatureVariationEnabled(Z)V
    .locals 1

    const-string v0, "enable_feature_variation"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFeatureVariationTestValues()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "sales_code"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setSalesCode(Ljava/lang/String;)V

    :cond_0
    const-string v0, "country_code"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setCountryCode(Ljava/lang/String;)V

    :cond_1
    const-string v0, "country_iso_code"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setCountryIsoCode(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getImsConfigMdmnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setImsConfigMdmnType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getCscHomepageURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setCscHomepageURL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getCscUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setCscUserAgent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDisableAllSearchEngineExceptGoogle()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setDisableAllSearchEngineExceptGoogle(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getChameleonUsed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setChameleonUsed(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getPromptToExitEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setPromptToExitEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getSupportDetailBrightness()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setSupportDetailBrightness(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getEnableSurveyMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setEnableSurveyMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setFakeId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getLoadedCsc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setLoadedCsc(Ljava/lang/String;)V

    return-void
.end method

.method public setImsConfigMdmnType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "csc_feature_ims_config_mdmn_type"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->setIMSConfigMdmnType(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadedCsc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "loaded_csc"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMaxRichEntity(I)V
    .locals 1

    const-string v0, "max_rich_entity_item"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setNightDimEnabled(ZI)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setUseNightDim(ZI)V

    return-void
.end method

.method public setPATSupport(Z)V
    .locals 1

    const-string v0, "pref_pat_enable"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPagetransSplitMode(Z)V
    .locals 1

    const-string v0, "enable_pagetrans_split"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPromotionInstantMode(Z)V
    .locals 1

    const-string v0, "pref_promotion_debug_instant_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPromptToExitEnabled(Z)V
    .locals 1

    const-string v0, "csc_feature_web_enableprompttoexit"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRedirectSkipEnabled(Z)V
    .locals 1

    const-string v0, "pref_support_redirect_skip"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRichEntityEnabled(Z)V
    .locals 1

    const-string v0, "enable_rich_entity"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRichEntityPosition(I)V
    .locals 1

    const-string v0, "position_of_rich_entity"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setRichEntityTestMode(Z)V
    .locals 1

    const-string v0, "enable_rich_entity_test"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSARTEnabled(Z)V
    .locals 0

    sput-boolean p1, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->sIsSARTEnabled:Z

    return-void
.end method

.method public setSaferBrowsingMinimumWaitDurationEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "pref_safer_browsing_debug_minimum_wait_duration_enable"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSalesCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sales_code"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSupportDetailBrightness(Z)V
    .locals 1

    const-string v0, "floating_feature_lcd_support_detail_brightness"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->setDetailBrightnessSupported(Z)V

    return-void
.end method

.method public setTemporarilyUnblockAdsSupported(Ljava/lang/String;)V
    .locals 1

    const-string v0, "support_content_blocker_temporarily_unblock_ads"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUPIVPAEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceCommandLine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "enable-upi-vpa"

    if-eqz p1, :cond_1

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "enable_upi_vpa_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUpdateCardEnabled(Z)V
    .locals 1

    const-string v0, "pref_debug_flag_update_card"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    const-string p0, "user-agent"

    invoke-static {p0, p1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldShowSuggestionRegardlessOfDate()Z
    .locals 2

    const-string v0, "pref_show_suggestion_regardless_of_date"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public shouldShowSuggestionRegardlessOfTabCount()Z
    .locals 2

    const-string v0, "pref_show_suggestion_regardless_of_tab_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public shouldShowSuggestionWithMinPredictionCountAsOne()Z
    .locals 2

    const-string v0, "pref_show_suggestion_with_min_prediction_count_as_one"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public skipUserConsent()Z
    .locals 2

    const-string v0, "pref_ai_skip_user_consent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public supportCardViewType()Z
    .locals 2

    const-string v0, "pref_support_card_view_type"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public supportLockoutForNonSamsungDevice()Z
    .locals 2

    const-string v0, "pref_support_lockout_for_non_samsung_device"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public supportRemoveDuplicateHomepageTab()Z
    .locals 2

    const-string v0, "pref_support_remove_duplicate_homepage_tab"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public supportTWAImmersiveMode()Z
    .locals 2

    const-string v0, "pref_support_twa_immersive_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useBiometricPrompt()Z
    .locals 2

    const-string v0, "pref_use_biometric_prompt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useIntentBasedBiometrics()Z
    .locals 2

    const-string v0, "pref_use_intent_based_biometrics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useIntentBasedTerraceCallback()Z
    .locals 2

    const-string v0, "pref_use_intent_based_terrace_callback"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useKeyguardLockScreen()Z
    .locals 2

    const-string v0, "pref_use_keyguard_lock_screen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useKnoxWarrantyBlown()Z
    .locals 2

    const-string v0, "pref_knox_warranty_blown_flag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useLowQualityBitmap()Z
    .locals 2

    const-string v0, "pref_use_low_quality_bitmap"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useMemoryPressureListener()Z
    .locals 2

    const-string v0, "pref_use_memory_pressure_listener"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useMockPasswordForm()Z
    .locals 2

    const-string v0, "pref_use_mock_password_form"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useQueryWithPslToSamsungPass()Z
    .locals 2

    const-string v0, "pref_use_query_with_psl_to_samsung_pass"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useSecureFlag()Z
    .locals 2

    const-string v0, "pref_use_secure_flag"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useSherlockEnvironment()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isUserBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_use_sherlock_environment"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public useTouchDetectorView()Z
    .locals 2

    const-string v0, "pref_use_touch_detector_view"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public virtualCardNotSupportedMerchant()Z
    .locals 2

    const-string v0, "pref_virtual_card_not_support_merchant"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
