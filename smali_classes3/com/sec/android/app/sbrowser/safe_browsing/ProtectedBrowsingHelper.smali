.class public Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;
    }
.end annotation


# static fields
.field private static sDelegateFactory:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;

.field private static sInitializeCalled:Z

.field private static sIsProtectedBrowsingSupported:Z

.field private static sPendingForceOptInSettings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isUsa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAttSubsidiary()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sIsProtectedBrowsingSupported:Z

    return-void
.end method

.method public static getSafetyNetApiKeys()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getSafetyNetApiKeys(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sInitializeCalled:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->setDelegateFactory()V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sPendingForceOptInSettings:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->needsForceOptInSettings()Z

    :cond_0
    return-void
.end method

.method public static isOptIn()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->isOptIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProtectedBrowsingSupported(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "ProtectedBrowsing"

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sIsProtectedBrowsingSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSaferBrowsingSupported()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->isUpdateApiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSaferBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupported()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;->isSafetyNetApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isProtectedBrowsingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needsForceOptInSettings()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isOptIn()Z

    move-result v0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getSafeBrowsingGlobalConfigSetting()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSafeBrowsingGlobalConfigSetting(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isSafeBrowsingOptPreviously()Z

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSafeBrowsingUserOpted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSafeBrowsing(Z)V

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSafeBrowsing(Z)V

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSafeBrowsingOptState(Z)V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 0

    sget-boolean p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sInitializeCalled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sPendingForceOptInSettings:Z

    return-void

    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sPendingForceOptInSettings:Z

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sDelegateFactory:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->setDelegateFactory()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isSaferBrowsingSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updateThreatsListIfNeeded()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->needsForceOptInSettings()Z

    return-void
.end method

.method private static setDelegateFactory()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sDelegateFactory:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;

    invoke-static {v0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->setDelegateFactoryAndSBHandler(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;)V

    return-void
.end method

.method public static setSIsProtectedBrowsingSupportedForTesting(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-boolean p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->sIsProtectedBrowsingSupported:Z

    return-void
.end method
