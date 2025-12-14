.class public Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsNativeInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    return-object v0
.end method

.method public static isPATEnabled(Z)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPrivateAccessTokenPreference(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPATSupported(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "com.samsung.android.privateaccesstokens"

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isSupportableOneUIVersion()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v3, "android"

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PATFeatureConfigManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public static isSupportableOneUIVersion()Z
    .locals 3

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPATOneUIRequirement()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "OneUI version supported: "

    const-string v2, "PATFeatureConfigManager"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method


# virtual methods
.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 3

    const-string v0, "PATFeatureConfigManager"

    const-string v1, "onFeatureConfigUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivateAccessToken(ZZ)V

    :cond_1
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->mIsNativeInitialized:Z

    if-eqz p0, :cond_2

    invoke-static {v1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setPrivacyAccessTokenEnabled(Z)V

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->setPatState(Z)V

    :cond_2
    return-void
.end method

.method public onNativeInitialized(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->mIsNativeInitialized:Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setPATSupport(Z)V

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->setPatState(Z)V

    :cond_1
    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setPrivacyAccessTokenEnabled(Z)V

    return-void
.end method

.method public setPrivateAccessToken(ZZ)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivateAccessToken(ZZ)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->mIsNativeInitialized:Z

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setPrivacyAccessTokenEnabled(Z)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->setPatState(Z)V

    :cond_1
    return-void
.end method
