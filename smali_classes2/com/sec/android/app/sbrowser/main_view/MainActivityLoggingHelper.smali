.class public Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->lambda$sendSALogForDefaultBrowser$0()V

    return-void
.end method

.method private synthetic lambda$sendSALogForDefaultBrowser$0()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getCurrentDefaultBrowser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0064"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loggingForMainScreen()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string p0, "202_DeX"

    goto :goto_0

    :cond_0
    const-string p0, "201_DeX"

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->getDevicePosture()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_2

    const-string p0, "202_FL"

    goto :goto_1

    :cond_2
    const-string p0, "201_FL"

    :goto_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDisplayTypeSub(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    const-string p0, "202_FR"

    goto :goto_2

    :cond_4
    const-string p0, "201_FR"

    :goto_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz v0, :cond_6

    const-string p0, "202_MW"

    goto :goto_3

    :cond_6
    const-string p0, "201_MW"

    :goto_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    const-string p0, "202"

    goto :goto_4

    :cond_8
    const-string p0, "201"

    :goto_4
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private loggingSilentChange()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "pref_wrong_network_country_iso"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "9750"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getScreenID(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "101"

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "102"

    goto :goto_0

    :cond_3
    const-string p0, "100"

    :goto_0
    return-object p0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->getDevicePosture()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "202_FL"

    goto :goto_1

    :cond_5
    const-string p0, "201_FL"

    :goto_1
    return-object p0

    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->getDisplayDeviceType(Landroid/content/res/Configuration;)I

    move-result p1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->SEM_DISPLAY_DEVICE_TYPE_SUB:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "202_FR"

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_7
    const-string p0, "201_FR"
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "si__MainActivityLoggingHelper"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "202"

    goto :goto_4

    :cond_9
    const-string p0, "201"

    :goto_4
    return-object p0
.end method

.method public loggingForAppVersion()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v0, "0011"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "si__MainActivityLoggingHelper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public loggingForBookmarkBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarUtil;->sendStatusLogForBookmarkBarItemCount(Landroid/app/Activity;Z)V

    return-void
.end method

.method public loggingForCloud()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->sendStatusLogForCloudAccount(Landroid/content/Context;)V

    return-void
.end method

.method public loggingForColorPalette()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140d24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isColorPaletteEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "On"

    goto :goto_0

    :cond_0
    const-string p0, "Off"

    :goto_0
    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loggingForCountryDecision()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_country_sa_logging_needed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->loggingSilentChange()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p0

    const-string v0, "111"

    if-eqz p0, :cond_0

    const-string p0, "GED"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCscCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "ETC"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isPayingCID()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p0, :cond_3

    const-string p0, "PS"

    goto :goto_1

    :cond_3
    const-string p0, "PD"

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    const-string p0, "NS"

    goto :goto_1

    :cond_5
    const-string p0, "ND"

    :goto_1
    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public loggingForTabBar()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getTabBarSwitchSetting(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "On"

    goto :goto_1

    :cond_1
    const-string v0, "Off"

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getTabBarSpinnerSetting(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140d6e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendSALogForDefaultBrowser()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/b;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public sendSALoggingForMainViewLaunchMode(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ETC"

    const-string v3, "si__MainActivityLoggingHelper"

    if-nez v1, :cond_5

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->DETAIL_MAIN_ACTIVITY_LAUNCH_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v1, "com.sec.android.app.sbrowser.beta.ACTION_DEEP_LINK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "host"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "search"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "COMMON_QR_SCANNER_SEARCH"

    :cond_1
    const-string v1, "com.sec.android.app.sbrowser.beta.search.widget.OPEN.APP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "750"

    const-string v2, "7500"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SEARCH_WIDGET"

    :cond_2
    const-string v1, "com.sec.android.app.sbrowser.beta_SEARCH_WIDGET_LAUNCH_MAIN_VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "SEARCH_WINDOW"

    :cond_3
    const-string v1, "handoff"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "HANDOFF"

    move-object v2, p1

    :cond_4
    const-string p1, "LaunchMode action : "

    invoke-static {p1, v0, v3}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p1, "LaunchMode action : null"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "LaunchMode detail : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "det"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrier"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1029"

    const-string v1, "201"

    invoke-static {v1, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget p1, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v0, 0x13880

    if-lt p1, v0, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopWindowingOnExternalDisplay(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "6501"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-ge p1, v0, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "6500"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->loggingForMainScreen()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isUseWebsiteDarkThemeEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "WebsiteTheme"

    goto :goto_3

    :cond_8
    const-string p0, "ForceDark"

    goto :goto_3

    :cond_9
    const-string p0, "Off"

    :goto_3
    const-string p1, "2485"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
