.class public Lcom/sec/android/app/sbrowser/stub/UpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/stub/UpdateManager$LazyHolder;,
        Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;,
        Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mConfigType:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

.field private mDebugTesting:Ljava/lang/String;

.field private mFakeCurrentVersion:Ljava/lang/String;

.field private mInstalledVersion:Ljava/lang/String;

.field private mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isEngOrDebugBuild()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdate()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdateByCase()V

    return-void
.end method

.method private checkUpdate()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getBetaInstallPackage()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isAppStoreAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->is96HoursPassedAfterLastChecking()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->initVersionCheck()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->initConfiguration()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->isForceUpdateVersionsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->needUpdateCheckWithConfig()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isPkgAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdateOnGooglePlay()V

    goto :goto_0

    :cond_4
    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isPkgAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdateOnGalaxyStore()V

    :cond_5
    :goto_0
    return-void
.end method

.method private checkUpdateByCase()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isDisasterNetModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdate()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result v0

    const-string v1, "NONE"

    const-string v2, "UpdateManager"

    if-nez v0, :cond_3

    const-string v0, "Samsung Account not signed in"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setCountryCode(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdate()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "FAIL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "countyCode is saved already."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdate()V

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$2;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->getAccessToken(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method private checkUpdateOnGalaxyStore()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->isDebugMenuTesting()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkUpdateOnGalaxyStoreDebug with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mFakeCurrentVersion:Ljava/lang/String;

    const-string v2, "UpdateManager"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mFakeCurrentVersion:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->checkUpdateOnGalaxyStoreDebug(Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->checkUpdateOnGalaxyStore(Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;)V

    :goto_0
    return-void
.end method

.method private checkUpdateOnGooglePlay()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$4;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->checkUpdateOnGooglePlay(Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdateOnGalaxyStore()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->handleForceUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->handleVersionUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->handleVersionUpdateViaPlayStore()V

    return-void
.end method

.method private static getActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private getConfigurationData()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getConfigVersion()I

    move-result v0

    const-string v1, "UpdateManager"

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->loadData()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "loadData failed"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->prepareConfigData(Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v2, "getConfigurationData done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getConfigTesting()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mDebugTesting:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->isDebugMenuTesting()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "debug setting : tester: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mDebugTesting:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getFakeCurrentVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mFakeCurrentVersion:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mFakeCurrentVersion:Ljava/lang/String;

    :cond_5
    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "debug setting : fakeCurrentVersion : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mFakeCurrentVersion:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private getForceUpdateVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->getUpdateType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    move-result-object p0

    sget-object p2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->FORCED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "-1"

    :goto_0
    const-string p0, "getForceUpdateVersion forcedVer: "

    const-string p2, "UpdateManager"

    invoke-static {p0, p1, p2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/stub/UpdateManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    move-result-object v0

    return-object v0
.end method

.method private getUpdateType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->isConfigurationReady()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->NORMAL:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->replaceVersionCodeToCompare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mConfigType:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

    sget-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;->FORCED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

    const-string v1, "UpdateManager"

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->containsForced(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->FORCED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    return-object p0

    :cond_2
    const-string p0, "Config.FORCED -> return : IGNORE"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->IGNORE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    return-object p0

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;->RECOMMENDED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

    if-ne p0, v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->containsRecommend(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->RECOMMENDED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    return-object p0

    :cond_4
    const-string p0, "Config.RECOMMENDED -> return : IGNORE"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->IGNORE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    return-object p0

    :cond_5
    sget-object p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->NORMAL:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    return-object p0

    :cond_6
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->NONE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->isGalaxyStoreUpdateNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private handleForceUpdate(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getUpdateVersion()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->resetUpdatePopupShowedCount()V

    :cond_0
    const-string v0, "disable-update-dialog"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "UpdateManager"

    if-eqz v0, :cond_1

    const-string p0, "Update dialog is blocked by commandline switch."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->doNextUpdateCheck(Z)V

    new-instance v1, Lm/k;

    const v2, 0x7f1501c5

    invoke-direct {v1, v0, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f140fe7

    goto :goto_0

    :cond_3
    const v2, 0x7f140fe6

    :goto_0
    invoke-virtual {v1, v2}, Lm/k;->a(I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$9;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$9;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Landroid/app/Activity;)V

    const v3, 0x7f140fe4

    invoke-virtual {v1, v3, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$10;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$10;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Landroid/app/Activity;)V

    const v3, 0x7f140fe1

    invoke-virtual {v1, v3, v2}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$11;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$11;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Landroid/app/Activity;)V

    iget-object p0, v1, Lm/k;->a:Lm/h;

    iput-object v2, p0, Lm/h;->p:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v1}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setUpdateVersion(J)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setForceUpdateVersion(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string p0, "activity is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleRecommendUpdate(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getUpdatePopupShowedCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "disable-update-dialog"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "UpdateManager"

    if-eqz v0, :cond_1

    const-string p0, "Update dialog is blocked by commandline switch."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lm/k;

    const v2, 0x7f1501c5

    invoke-direct {v1, v0, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f140fe8

    goto :goto_0

    :cond_3
    const v2, 0x7f140fe5

    :goto_0
    invoke-virtual {v1, v2}, Lm/k;->e(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f140fea

    goto :goto_1

    :cond_4
    const v2, 0x7f140fe9

    :goto_1
    invoke-virtual {v1, v2}, Lm/k;->a(I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$6;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$6;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Landroid/app/Activity;)V

    const v3, 0x7f140fe4

    invoke-virtual {v1, v3, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$7;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    const v3, 0x7f140fe2

    invoke-virtual {v1, v3, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$8;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    iget-object p0, v1, Lm/k;->a:Lm/h;

    iput-object v2, p0, Lm/h;->p:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v1}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setUpdateVersion(J)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    const-string p0, "activity is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleVersionUpdate(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update version exists : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getUpdateVersion()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->resetUpdatePopupShowedCount()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->getUpdateType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->FORCED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    if-ne v0, v2, :cond_1

    const-string v0, "force update."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->handleForceUpdate(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->RECOMMENDED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    const-string v0, "recommend update. show a popup only twice."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->handleRecommendUpdate(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setIgnoreUpdateCheck(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setUpdateVersion(J)V

    sget-object p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->IGNORE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    if-ne v0, p0, :cond_3

    const-string p0, "IGNORE update. no need to show an update popup"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setIgnoreUpdateCheck(Z)V

    goto :goto_0

    :cond_3
    const-string p0, "NORMAL update. no need to show an update popup"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setIgnoreUpdateCheck(Z)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->doNextUpdateCheck(Z)V

    return-void
.end method

.method private handleVersionUpdateViaPlayStore()V
    .locals 1

    const-string v0, "update via Play Store"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->getUpdateAvailableVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->handleVersionUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private initConfiguration()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->getConfigurationData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->prepareConfigForUpdateCheck()V

    return-void
.end method

.method private initVersionCheck()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setGooglePlayUpdateAvailable(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->clearUpdateAvailableVersionCode()V

    return-void
.end method

.method private isConfigurationReady()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->isConfigExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "UpdateType"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->isDebugMenuTesting()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v0, "isConfigurationReady : "

    const-string v1, "UpdateManager"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private isDebugMenuTesting()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mDebugTesting:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "UpdateManager"

    const-string v0, "isDebugMenuTesting enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isForceUpdateVersionsAvailable()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getForceUpdateVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$3;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isGalaxyStoreUpdateNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->getForceUpdateVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le v0, p1, :cond_1

    const-string p1, "-1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private needUpdateCheckWithConfig()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->hasForcedVersionConfig()Z

    move-result v0

    const-string v1, "no need to check update"

    const-string v2, "config version : lower than installed version"

    const/4 v3, 0x0

    const-string v4, "UpdateManager"

    if-eqz v0, :cond_2

    const-string v0, "AppUpdateConfig : forced version config exists"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->hasLowerForcedConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isNeedUpdateCheck()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;->FORCED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mConfigType:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->hasRecommendedVersionConfig()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "AppUpdateConfig : recommended version config exists"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->hasLowerRecommendConfig()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isIgnoreUpdateCheck()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "IGNORE update check"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isNeedUpdateCheck()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getUpdatePopupShowedCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isSatisfiedDurationOfPopup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "2 weeks period : satisfied"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string p0, "2 weeks period : not satisfied"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;->RECOMMENDED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mConfigType:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

    goto :goto_1

    :cond_8
    const-string v0, "AppUpdateConfig : no version config exists. Let check update once in 48 hours to show an update badge"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;->NORMAL:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mConfigType:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Config;

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private prepareConfigData(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->checkVersionValidity(Ljava/lang/String;)V

    return-void
.end method

.method private prepareConfigForUpdateCheck()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getInstalledVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mInstalledVersion:Ljava/lang/String;

    const-string v1, "UpdateManager"

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->isDebugMenuTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mFakeCurrentVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mInstalledVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setInstalledVersion(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mInstalledVersion :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mInstalledVersion:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mInstalledVersion:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->prepareConfigData(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->isDebugMenuTesting()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mFakeCurrentVersion:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mInstalledVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mInstalledVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setInstalledVersion(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "version changed : mInstalledVersion :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mInstalledVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->resetPrefsForUpdate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->mInstalledVersion:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->prepareConfigData(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private replaceVersionCodeToCompare(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "000"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkUpdateAtLoadFinishedIfAvailable(Landroid/app/Activity;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isHelpIntroRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "UpdateManager"

    const-string p1, "Do not show update dialog while help intro is running"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$1;-><init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
