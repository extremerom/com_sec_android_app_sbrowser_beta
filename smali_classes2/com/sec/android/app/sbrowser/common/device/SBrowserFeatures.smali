.class public Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sCustomUA:Ljava/lang/String; = ""

.field private static sCutOutDisplayEnabled:Z = false

.field private static sDetailBrightnessSupported:Z = true

.field private static sDisableAllSearchEngineExceptGoogle:Z = false

.field private static sEagleEyeSupported:Z = false

.field private static sFakeId:Ljava/lang/String; = ""

.field private static sFeatureLoadComplete:Z = false

.field private static sIMSConfigMdmnType:Ljava/lang/String; = null

.field private static sSetHomepageURL:Ljava/lang/String; = null

.field private static sSurveyModeEnabled:Z = false

.field private static sUseChameleon:Z = false


# direct methods
.method public static getCscHomepageURL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sSetHomepageURL:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomUA()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sCustomUA:Ljava/lang/String;

    return-object v0
.end method

.method public static getDisableAllSearchEngineExceptGoogle()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sDisableAllSearchEngineExceptGoogle:Z

    return v0
.end method

.method public static getFakeId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sFakeId:Ljava/lang/String;

    return-object v0
.end method

.method public static getIMSConfigMdmnType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sIMSConfigMdmnType:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sFeatureLoadComplete:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->loadCscFeatureValue()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->loadFloatingFeatureValue()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sFeatureLoadComplete:Z

    return-void
.end method

.method public static isCutOutDisplaySupported()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CutOutDisplay Supported:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sCutOutDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__SBrowserFeatures"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sCutOutDisplayEnabled:Z

    return v0
.end method

.method public static isDetailBrightnessSupported()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sDetailBrightnessSupported:Z

    return v0
.end method

.method public static isEagleEyeSupported()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sEagleEyeSupported:Z

    return v0
.end method

.method public static isQuickAccessSmartSwitchSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSurveyModeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sSurveyModeEnabled:Z

    return v0
.end method

.method public static isUrlDirectWritingSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static loadCscFeatureValue()V
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-static {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sIMSConfigMdmnType:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CscFeature_Web_SetHomepageURL"

    invoke-static {v1, v2}, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    sput-object v2, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sSetHomepageURL:Ljava/lang/String;

    const-string v1, "CscFeature_Web_SetUserAgent"

    invoke-static {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sCustomUA:Ljava/lang/String;

    const-string v0, "CscFeature_Web_DisableAllSearchEngineExceptGoogle"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sDisableAllSearchEngineExceptGoogle:Z

    const-string v0, "CscFeature_Common_UseChameleon"

    invoke-static {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sUseChameleon:Z

    const-string v0, "si__SBrowserFeatures"

    const-string v1, "initialize : loadCscFeatureValue() succeed! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static loadFloatingFeatureValue()V
    .locals 2

    :try_start_0
    const-string v0, "SEC_FLOATING_FEATURE_LCD_SUPPORT_DETAIL_BRIGHTNESS"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sDetailBrightnessSupported:Z

    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sSurveyModeEnabled:Z

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_EAGLE_EYE"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sEagleEyeSupported:Z

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISPLAY_CUTOUT"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sCutOutDisplayEnabled:Z

    const-string v0, "SEC_FLOATING_FEATURE_BROWSER_CONFIG_FAKE_MODEL_NAME"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sFakeId:Ljava/lang/String;

    const-string v0, "si__SBrowserFeatures"

    const-string v1, "initialize : loadFloatingFeatureValue() succeed! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setCscHomepageURL(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sSetHomepageURL:Ljava/lang/String;

    return-void
.end method

.method public static setCustomUA(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sCustomUA:Ljava/lang/String;

    return-void
.end method

.method public static setDetailBrightnessSupported(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sDetailBrightnessSupported:Z

    return-void
.end method

.method public static setDisableAllSearchEngineExceptGoogle(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sDisableAllSearchEngineExceptGoogle:Z

    return-void
.end method

.method public static setFakeId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sFakeId:Ljava/lang/String;

    return-void
.end method

.method public static setIMSConfigMdmnType(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sIMSConfigMdmnType:Ljava/lang/String;

    return-void
.end method

.method public static setSurveyModeEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sSurveyModeEnabled:Z

    return-void
.end method

.method public static setUseChameleon(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sUseChameleon:Z

    return-void
.end method

.method public static supportSplashScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static useChameleon()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->sUseChameleon:Z

    return v0
.end method
