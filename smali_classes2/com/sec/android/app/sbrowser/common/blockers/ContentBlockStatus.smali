.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$LazyHolder;,
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$ContentBlockerStatus;
    }
.end annotation


# instance fields
.field private mDefaultBlockerStatus:I

.field public mIsDebugMode:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->mDefaultBlockerStatus:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->mIsDebugMode:Z

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->mDefaultBlockerStatus:I

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$LazyHolder;->a()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    return-object v0
.end method

.method private isChina()Z
    .locals 1

    const-string p0, "CN"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isChinaGED(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.vending"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isChinaNetwork()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isChinaNetwork()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isContentBlockerActivated(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isChinaGED(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabledForChinaGED(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public initContentBlockerLists(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->initialize(Landroid/content/Context;Z)Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;Landroid/content/Context;)V

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    sget p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->DEFAULT_LIST_UPDATE_INIT_DELAY:I

    int-to-long p0, p0

    :goto_0
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public initDefaultContentBlocker(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->mDefaultBlockerStatus:I

    const-string v1, "ContentBlock.Manager"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string p0, "initDefaultContentBlocker initialize is in progress"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->mDefaultBlockerStatus:I

    const-string v0, "initDefaultContentBlocker"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$2;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$3;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$4;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;Landroid/content/Context;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initFilterAppList(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->retrievePackages(Landroid/content/Context;)V

    const-string p0, "ContentBlock.Manager"

    const-string p1, "initFilterAppList"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isActivatedByConfig(Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockerActivated(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isContentBlockMenuEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockerActivated(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isContentBlockerSupported(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isContentBlockerSupported()Z

    move-result p0

    return p0
.end method

.method public isDebugMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->mIsDebugMode:Z

    return p0
.end method

.method public isDefaultTurnOnEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->isDefaultTurnOnEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isForGalaxyApps(Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isChina()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isChinaGED(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public printStatusLog(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getLoadedFilterSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ContentBlocker enabled : %b, size : %d Bytes%nselectedPackageList : %s"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.Manager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetContentBlocker()V
    .locals 2

    const-string v0, "resetContentBlocker"

    const-string v1, "ContentBlock.Manager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isActiveTerraceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Terrace is not initialized"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$6;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->resetContentBlocker()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->clearNumberOfBlockedContents()V

    return-void
.end method

.method public resetDefaultContentBlocker()V
    .locals 2

    const-string v0, "ContentBlock.Manager"

    const-string v1, "resetDefaultContentBlocker"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$5;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->resetDefaultContentBlocker()V

    return-void
.end method

.method public setAAABaitElementDetectionEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setAAABaitElementDetectionEnabled(Z)V

    return-void
.end method

.method public setAAABaitJavascriptDetectionEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setAAABaitJavascriptDetectionEnabled(Z)V

    return-void
.end method

.method public setContentBlockerSupported(Landroid/content/Context;Z)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setContentBlockerSupported "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentBlock.Manager"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setContentBlockerSupported(Z)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->resetContentBlocker()V

    :cond_0
    return-void
.end method

.method public setIsDebugMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->mIsDebugMode:Z

    return-void
.end method

.method public setSitekeyRulesEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setSitekeyRulesEnabled(Z)V

    return-void
.end method

.method public shouldInitializeContentBlock(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isChinaGED(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabledForChinaGED(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
