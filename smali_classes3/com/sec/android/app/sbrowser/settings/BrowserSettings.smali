.class public Lcom/sec/android/app/sbrowser/settings/BrowserSettings;
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

.method public static synthetic a()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    return-object v0
.end method

.method private updateAntiTrackingLevelPreferences()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const-string v1, "anti_tracking_state"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingLevel(ZI)V

    invoke-static {v3, v2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingLevel(ZI)V

    invoke-static {v3, v3}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingLevel(ZI)V

    invoke-static {v2, v2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p0

    invoke-static {v3, p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p0

    invoke-static {v2, p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    :goto_1
    const-string p0, "enable-sat-strict-mode"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingLevel(ZI)V

    invoke-static {v3, v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getAutofillEnabledWithKnoxPolicy(Ljava/lang/String;)Z
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isAutoFillEnabled()Z

    move-result v0

    const-string v1, "autofill_restore_flag_for_knoxmode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "autofill_profile"

    const-string v5, "autofill_creditcard"

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    move v7, v6

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    move v7, v2

    :goto_0
    packed-switch v7, :pswitch_data_0

    move v7, v6

    goto :goto_1

    :pswitch_0
    const-string v7, "remember_passwords"

    invoke-virtual {p0, v7, v6}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v4, v6}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0, v1, v6}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    move v3, v2

    goto :goto_3

    :cond_3
    const-string v0, "autofill_setting_value_before_knoxmode"

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    move v3, v7

    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    :goto_3
    if-eq v3, v7, :cond_5

    move v2, v6

    :cond_5
    if-nez v2, :cond_6

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->isAutofillProfileEnabled()Z

    move-result v0

    if-eq v3, v0, :cond_7

    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setAutofillProfileEnabled(Z)V

    :cond_7
    if-nez v2, :cond_8

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->isAutofillCreditCardEnabled()Z

    move-result v0

    if-eq v3, v0, :cond_9

    :cond_8
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setAutofillCreditCardEnabled(Z)V

    :cond_9
    if-eqz v2, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSaveSigninEnabled(Z)V

    :cond_a
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a963de4 -> :sswitch_2
        -0x71adefca -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->initializePreferencesValues()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setDefaultSearchEngine()V

    return-void
.end method

.method public initializePreferencesValues()V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isCardsPreferenceVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "autofill_creditcard"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setAutofillCreditCardEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isCookiesEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setKnoxCookiesEnabled(Z)V

    const-string v3, "accept_cookies"

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAllowCookiesEnabled(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cookie settings = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BrowserSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isJavaScriptEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setKnoxJavaScriptEnabled(Z)V

    const-string v4, "enable_javascript"

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v4, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setJavaScriptEnabled(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "javascript settings = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isPopupEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setKnoxPopupEnabled(Z)V

    const-string v4, "block_popups"

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p0, v4, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    xor-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAllowPopupsEnabled(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "blockpopup settings = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isAutoFillEnabled()Z

    move-result v0

    const-string v4, "remember_passwords"

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {p0, v4, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setRememberPasswordsEnabled(Z)V

    const-string v0, "auto_signin"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAutoSigninEnabled(Z)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getAutofillEnabledWithKnoxPolicy(Ljava/lang/String;)Z

    const-string v4, "force_set_as_true_force_zoom"

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "force_enable_zoom"

    if-eqz v5, :cond_5

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    move v4, v2

    :goto_5
    invoke-virtual {p0, v6, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setForceZoomEnabled(Z)V

    const-string v4, "search_suggestions"

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {v5}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSearchSuggestEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->initialize()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Zawgyi selected in phone settings, enable Zawgyi encoding"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setZawgyiLanguageEnable(Z)V

    goto :goto_6

    :cond_6
    invoke-static {v1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setZawgyiLanguageEnable(Z)V

    :goto_6
    const-string v4, "text_scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setFontScaleFactor(F)V

    const-string v4, "block_auto_download"

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockAutoDownloadEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isWebPushFeatureEnabled()Z

    move-result v4

    const-string v5, "web_notification_state"

    if-eqz v4, :cond_7

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_7

    :cond_7
    move v4, v1

    :goto_7
    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setPushNotificationsEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v5, "safe_browsing"

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSafeBrowsing(Z)V

    const-string v4, "block_unwanted_webpages"

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBlockUnwantedWebpages(Z)V

    const-string v4, "pref_use_auto_https_upgrade"

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAutoHttpsUpgradeEnabled(Z)V

    const-string v4, "third_party_cookies"

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAllowThirdPartyCookies(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isGoToTopEnabled()Z

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setGoToTopEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isGoToBottomEnabled()Z

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setGoToBottomEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isAutoPlayEnabled()Z

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAutoplayEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->updateAntiTrackingLevelPreferences()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->correctCountryGoolgeBookmark(Landroid/content/Context;)V

    const-string v4, "pref_hide_status_bar"

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setHideStatusBar(Z)V

    const-string v4, "pref_hide_status_bar_no_cutout"

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v4, "BASIC"

    const-string v5, "pref_focus_layout_type"

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setCompactModeEnabled(Z)V

    const-string v4, "pref_layout_one_bar_type"

    const-string v5, "MULTI"

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v5, "pref_one_bar_selection"

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v4, "pref_main_screen_width_dp"

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    const-string v4, "pref_system_font_dir"

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSystemFontFamily(Ljava/lang/String;)V

    const-string v0, "Apply system font setting dir = "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_8
    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSystemFontFamily(Ljava/lang/String;)V

    :goto_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->hasDesktopWebsiteKey()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDefaultValueForDisplayDesktopWebSite(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setDesktopWebsiteEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isDesktopWebsiteForDexEnabled()Z

    move-result v0

    goto :goto_a

    :cond_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getDesktopWebsiteEnabledForMultiFold()I

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_9
    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v1

    goto :goto_a

    :cond_c
    if-ne v0, v2, :cond_b

    goto :goto_9

    :cond_d
    if-eqz v0, :cond_e

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isDesktopWebsiteForDexEnabled()Z

    move-result v0

    goto :goto_a

    :cond_e
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isDesktopWebsiteEnabled()Z

    move-result v0

    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set Default UseDesktopUserAgent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setRequestDesktopSitesEnabled(Z)V

    const-string v0, "pref_desktop_website_for_dex"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->shouldApplyNightDim()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getNightDimGain()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setUseNightDim(ZI)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const-string v3, "pref_allow_deeplink"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    xor-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockDeepLinkEnabled(Z)V

    :cond_f
    const-string v0, "pref_fix_toolbar"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setToolBarFixed(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isRedirectSkipEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setRedirectSkipEnabled(Z)V

    return-void
.end method

.method public isSafeBrowsingEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "safe_browsing"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public resetPreferenceData()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_extension_list_data"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    const-string v7, "biometric_auth_attempt_lockout_clock"

    invoke-interface {v4, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "do_no_show_samsung_pass_migration_popup"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "bookmark_samsung_signin_popup"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v14, "privacymodeaccesstype"

    invoke-interface {v13, v14, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v15, "do_not_show_incognito_popup_state"

    invoke-interface {v13, v15, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v15

    const-string v15, "privacy_mode_password"

    invoke-interface {v12, v15, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    move/from16 v18, v12

    const-string v12, "privacy_mode_fingerprint"

    invoke-interface {v15, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v19, v12

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    move/from16 v20, v15

    const-string v15, "privacy_mode_face"

    invoke-interface {v12, v15, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    move/from16 v22, v12

    const-string v12, "privacy_mode_iris"

    invoke-interface {v15, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v23, v12

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    move/from16 v24, v15

    const-string v15, "privacy_mode_intelligent_scan"

    invoke-interface {v12, v15, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    move/from16 v26, v12

    const-string v12, "enable_content_blocker"

    invoke-interface {v15, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    move/from16 v27, v9

    const-string v9, "content_blocker_saved_package"

    move-object/from16 v28, v12

    const-string v12, ""

    invoke-interface {v15, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v29, v12

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v30, v9

    const-string v9, "download_delete_old_db"

    move-object/from16 v31, v15

    const/4 v15, 0x1

    invoke-interface {v12, v9, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v15, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-nez v10, :cond_0

    invoke-interface {v15, v11, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v15, v14, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    if-eqz v13, :cond_2

    move-object/from16 v1, v16

    invoke-interface {v15, v1, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz v18, :cond_3

    move-object/from16 v2, v17

    const/4 v1, 0x1

    invoke-interface {v15, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    if-eqz v20, :cond_4

    move-object/from16 v2, v19

    invoke-interface {v15, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4
    if-eqz v22, :cond_5

    move-object/from16 v2, v21

    invoke-interface {v15, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5
    if-eqz v24, :cond_6

    move-object/from16 v2, v23

    invoke-interface {v15, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_6
    if-eqz v26, :cond_7

    move-object/from16 v2, v25

    invoke-interface {v15, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_7
    move/from16 v2, v27

    move-object/from16 v1, v28

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15, v9, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->initializePreferencesValues()V

    const-string v1, "factoryreset_url"

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "home_page_type"

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public setAutofillCreditCardEnabled(Z)V
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
    const-string v0, "autofill_creditcard"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->setAutofillCreditCardEnabled(Z)V

    return-void
.end method

.method public setAutofillProfileEnabled(Z)V
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
    const-string v0, "autofill_profile"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->setAutofillProfileEnabled(Z)V

    return-void
.end method

.method public setDefaultSearchEngine()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getFirstSearchEngineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setSearchEngine(Ljava/lang/String;Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;)V

    return-void
.end method

.method public setSearchEngine(Ljava/lang/String;Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->setSearchEngineToNative(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->setSearchEngineToPreference(Ljava/lang/String;)V

    return-void
.end method

.method public shouldApplyNightDim()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getUseNightDimEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isBlueLightFilterEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isNightDimEnabled()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
