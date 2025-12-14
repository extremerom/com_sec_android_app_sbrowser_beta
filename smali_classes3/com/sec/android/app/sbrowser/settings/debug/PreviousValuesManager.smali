.class public Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/DebugPreferenceKeys;


# static fields
.field private static volatile sInstance:Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "debug_preferences"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;->sInstance:Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;->sInstance:Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;->sInstance:Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;

    return-object v0
.end method


# virtual methods
.method public backupPreviousValues()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "backup_previous_values"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v0, "sales_code_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country_code_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country_iso_code_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "csc_feature_ims_config_mdmn_type_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getIMSConfigMdmnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "csc_feature_web_sethomepageurl_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getCscHomepageURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "csc_feature_web_setuseragent_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getCustomUA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "csc_feature_web_disableallsearchengineexceptgoogle_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getDisableAllSearchEngineExceptGoogle()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v0, "csc_feature_common_usechameleon_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->useChameleon()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v0, "csc_feature_web_enableprompttoexit_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/PromptExitUtil;->getEnablePromptToExit()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v0, "floating_feature_lcd_support_detail_brightness_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->isDetailBrightnessSupported()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v0, "floating_feature_contextservice_enable_survey_mode_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->isSurveyModeEnabled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v0, "floating_feature_web_setfakeid_backup"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getFakeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public restorePreviousValues()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Other"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "sales_code_backup"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setSalesCode(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "country_code_backup"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setCountryCode(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "country_iso_code_backup"

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setCountryIsoCode(Ljava/lang/String;)V

    const-string v1, "csc_feature_ims_config_mdmn_type_backup"

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setImsConfigMdmnType(Ljava/lang/String;)V

    const-string v1, "csc_feature_web_sethomepageurl_backup"

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setCscHomepageURL(Ljava/lang/String;)V

    const-string v1, "csc_feature_web_setuseragent_backup"

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setCscUserAgent(Ljava/lang/String;)V

    const-string v1, "csc_feature_web_disableallsearchengineexceptgoogle_backup"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setDisableAllSearchEngineExceptGoogle(Z)V

    const-string v1, "csc_feature_common_usechameleon_backup"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setChameleonUsed(Z)V

    const-string v1, "csc_feature_web_enableprompttoexit_backup"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setPromptToExitEnabled(Z)V

    const-string v1, "floating_feature_lcd_support_detail_brightness_backup"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setSupportDetailBrightness(Z)V

    const-string v1, "floating_feature_contextservice_enable_survey_mode_backup"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setEnableSurveyMode(Z)V

    const-string v1, "floating_feature_web_setfakeid_backup"

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setFakeId(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setLoadedCsc(Ljava/lang/String;)V

    return-void
.end method
