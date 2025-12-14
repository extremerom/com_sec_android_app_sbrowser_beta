.class public Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;,
        Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;
    }
.end annotation


# instance fields
.field private final mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

.field private final mStatusLogger:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mStatusLogger:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getSdk()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;-><init>()V

    return-object v0
.end method

.method private areRequiredPackagesInstalled()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "com.samsung.android.authfw"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.samsung.android.samsungpass"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.samsung.android.pass"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mStatusLogger:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;->updateInstallationStatus(Z)V

    return v1
.end method

.method private canPackageSupportBlocklist()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.samsung.android.samsungpass"

    const v2, 0x17e0abc0

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->comparePackageVersionWith(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private canPackageSupportDataSync()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.samsung.android.authfw"

    const v2, 0xbf7f700

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->comparePackageVersionWith(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private canPackageSupportLaunchIntent()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.samsung.android.authfw"

    const v2, 0xbf7f700

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->comparePackageVersionWith(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private canPackageSupportPasswordComparison()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.samsung.android.samsungpass"

    const v2, 0xf86ee08

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->comparePackageVersionWith(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    return-object v0
.end method

.method private getSdk()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->areRequiredPackagesInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSamsungPassDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;-><init>()V

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$1;-><init>(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;)V

    return-object v0
.end method


# virtual methods
.method public canPackageSupportOnBoardingDataMigration()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.samsung.android.samsungpass"

    const v2, 0x1a3d0698

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->comparePackageVersionWith(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public confirmSamsungAccount(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->confirmSamsungAccount(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V

    return-void
.end method

.method public decrypt([BLjava/lang/String;[B[B)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->decrypt([BLjava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public disableFmmLock(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->disableFmmLock(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V

    return-void
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->encrypt(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public generateKey(Ljava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->generateKey(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getEnabledAuthenticators()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->getEnabledAuthenticators()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasRegisteredAuthenticator()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->hasRegisteredAuthenticator()Z

    move-result p0

    return p0
.end method

.method public is3pEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getEnabledAuthenticators()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ppp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isActivated()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSamsungPassDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isEasySigninSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getEnabledAuthenticators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mStatusLogger:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;->updateActivationStatus(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public isAppPackageEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSamsungPassDisabled()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v0, "com.samsung.android.authfw"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBlocklistSupported()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isBlocklistSaveInSamsungPassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->areRequiredPackagesInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->canPackageSupportBlocklist()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEasySigninSupported()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isWebLoginForceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->areRequiredPackagesInstalled()Z

    move-result p0

    return p0
.end method

.method public isFmmLockEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->isFmmLockEnabled()Z

    move-result p0

    return p0
.end method

.method public isPasswordComparisonSupported()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->areRequiredPackagesInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->canPackageSupportPasswordComparison()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPersonalDataSyncAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPersonalDataSyncSet()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "autofill_setting_samsung_pass_sync"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPersonalDataSyncSupported()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->areRequiredPackagesInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->canPackageSupportDataSync()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProvisioned()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->isProvisioned()Z

    move-result p0

    return p0
.end method

.method public isSamsungAccountLogOut()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->isSamsungAccountLogOut()Z

    move-result p0

    return p0
.end method

.method public isSamsungPassInitializedSharedPref()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->isSamsungPassInitializedSharedPref()Z

    move-result p0

    return p0
.end method

.method public launchSamsungPass(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;)V
    .locals 3

    const-string v0, "launchSamsungPass"

    const-string v1, "SamsungPass"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Cannot find Samsung pass provider package. com.samsung.android.samsungpass"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->canPackageSupportLaunchIntent()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.samsung.android.authfw.samsungpass.SHOW_ADDRESS_CARD_LIST"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "launchMode"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "pass_entry_point"

    const-string p2, "Internet_Autofill"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.category.DEFAULT"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.category.INFO"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->onNativeInitializationSuccess()V

    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->onResume()V

    return-void
.end method

.method public setPersonalDataSync(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "autofill_setting_samsung_pass_sync"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldCompleteSignup()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->areRequiredPackagesInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isProvisioned()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->hasRegisteredAuthenticator()Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-nez v0, :cond_2

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v0, :cond_3

    const-string p0, "0017"

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    :cond_3
    const-string p0, "isJoinNeeded: "

    const-string v0, "SamsungPass"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return v1
.end method

.method public simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->mSamsungPassSdk:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;->simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
