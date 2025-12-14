.class public Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->lambda$showCanNotApplyToastIfNeeded$0(Landroid/app/Activity;)V

    return-void
.end method

.method public static contains(Landroid/view/View;[III)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->contains(Landroid/view/View;[III)Z

    move-result p0

    return p0
.end method

.method public static dismissClipboardDialog()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->dismissClipboardDialog()V

    return-void
.end method

.method public static forcehideKeyboard(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentDisplayType(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getCurrentDisplayType(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getDisplayCutoutMode(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getEnablePromptToExit()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/PromptExitUtil;->getEnablePromptToExit()Z

    move-result v0

    return v0
.end method

.method public static isBasicLayoutType(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isContentDarkModeEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    return v0
.end method

.method public static isCurrentActivityVisible(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isCurrentActivityVisible(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isDesktopMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isFirstpageUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFirstpageUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFocusLayoutType(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isGED()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    return v0
.end method

.method public static isHideStatusBarEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isHideStatusBarEnabled()Z

    move-result v0

    return v0
.end method

.method public static isImmersiveMode(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isInternalUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isKeyboardTurnedOn(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isKnoxMode(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isLandscape()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    return v0
.end method

.method public static isLandscapeOrTabletStyle(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isMobileLayout()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isMobileLayout()Z

    move-result v0

    return v0
.end method

.method public static isNativePageLastUrl()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNativePageUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNetworkAvailable()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method public static isPhoneLandscapeOrTablet(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isRecognizeSpeechAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isShowing()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->isShowing()Z

    move-result v0

    return v0
.end method

.method public static isTabBarEnabled(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isTabletLayout(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletStyle(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isTopInstanceInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isTopInstanceInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isUltraPowerSavingMode()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    return v0
.end method

.method public static isUrlDirectWritingSupported()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->isUrlDirectWritingSupported()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$showCanNotApplyToastIfNeeded$0(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x7f1402ba

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    return-void
.end method

.method public static recordMoreSavePage(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordMoreSavePage(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    return-void
.end method

.method public static resetDexSettings()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->resetDesktopMode()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->resetDefaultValueForDisplayDesktopWebSite()V

    return-void
.end method

.method public static safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static setFullScreen(Landroid/view/Window;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    return-void
.end method

.method public static setImmersiveMode(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setImmersiveMode(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setLastDesktopMode(IZ)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setLastDesktopMode(IZ)V

    return-void
.end method

.method public static setLastFixedTabMode(IZ)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setLastFixedTabMode(IZ)V

    return-void
.end method

.method public static showCanNotApplyToastIfNeeded(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/main_view/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/common/main_view/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->notifyCanNotApplyToastIfNeeded(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static supportSplashScreen()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->supportSplashScreen()Z

    move-result v0

    return v0
.end method

.method public static supportToolbarSwipe(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportToolbarSwipe(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static updateRecognizeSpeechAvailable(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->updateRecognizeSpeechAvailable(Landroid/content/Context;)V

    return-void
.end method

.method public static updateSystemSupportNightTheme()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->updateSystemSupportNightTheme()V

    return-void
.end method
