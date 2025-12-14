.class public Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$LazyHolder;,
        Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;
    }
.end annotation


# static fields
.field private static sBfcacheOff:Z = false


# instance fields
.field private mBlockedFeaturesVersion:F

.field private mBlockedUrlVersion:F

.field mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

.field private mFileFetcher:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;

.field private mGCMetadataVersion:I

.field private mIsNativeInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mGCMetadataVersion:I

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    move-result-object v0

    return-object v0
.end method

.method private onFinishedProcessingGCUpdate()V
    .locals 1

    const-string p0, "BFCacheConfigManager"

    const-string v0, "BFCACHELOG onFinishedProcessingGCUpdate()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setBFCacheMode(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "BFCACHELOG Set BFCache Mode : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BFCacheConfigManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "bfcache-mode"

    invoke-static {p0, p1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBfcacheOff()Z
    .locals 2

    sget-boolean p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->sBfcacheOff:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "sbr.bfcache.off"

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->sBfcacheOff:Z

    return v0
.end method


# virtual methods
.method public fetchConfigFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mFileFetcher:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;

    new-instance v1, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;-><init>(Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;->fetchConfigFile(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;)V

    return-void
.end method

.method public fileFetchFailed(Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "BFCACHELOG File fetch failed : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reason : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BFCacheConfigManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public fileFetchSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "BFCacheMetadata"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Updated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->processConfigUpdateState()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->updateListsIfRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedFeaturesVersion:F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBFCacheBlockedFeaturesVersion(F)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedUrlVersion:F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBFCacheBlockedUrlVersion(F)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mGCMetadataVersion:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBFCacheMetadataVersion(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fileFetchFailed(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->setCommandLine(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->setConfigSetting(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "BFCacheBlockedFeatures"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBFCacheBlockedFeatures(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBFCacheBlockedFeatures()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->setBlockedFeatures(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "BFCacheBlockedUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBFCacheBlockedUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBFCacheBlockedUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->setBlockedUrl(Ljava/lang/String;)V

    :cond_5
    :goto_1
    const-string p0, "BFCACHELOG File fetch succeeded : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BFCacheConfigManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_2
    const/4 p2, 0x6

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fileFetchFailed(Ljava/lang/String;I)V

    return-void
.end method

.method public getBFCacheAvailableStatus(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "BFCacheAvailableStatus"

    const/4 v1, 0x1

    const-string v2, "BFCache"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBlockedFeaturesVersionForTest()F
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedFeaturesVersion:F

    return p0
.end method

.method public getBlockedUrlVersionForTest()F
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedUrlVersion:F

    return p0
.end method

.method public getCurrentStateForTest()Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    return-object p0
.end method

.method public getIsNativeInitializedForTest()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mIsNativeInitialized:Z

    return p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mIsNativeInitialized:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->getBFCacheAvailableStatus(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    sget-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    if-eq p1, v0, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    if-eq p1, v1, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->processConfigUpdateState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNativeInitialized(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->setBfcacheOff()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->getBFCacheAvailableStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->getInstance()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->init()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mIsNativeInitialized:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mFileFetcher:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    const-string p1, "3"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->setBFCacheMode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->processConfigUpdateState()V

    return-void
.end method

.method public processConfigUpdateState()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$2;->$SwitchMap$com$sec$android$app$sbrowser$bfcache$BFCacheConfigManager$ConfigFetchState:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->onFinishedProcessingGCUpdate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mContext:Landroid/content/Context;

    const-string v1, "BFCacheBlockedUrl"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fetchConfigFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mContext:Landroid/content/Context;

    const-string v1, "BFCacheBlockedFeatures"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fetchConfigFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mContext:Landroid/content/Context;

    const-string v1, "BFCacheMetadata"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fetchConfigFile(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBlockedFeatures(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mFileFetcher:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;

    const-string v1, "list"

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;->jsonStringToIntArray(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    const-string v0, "BFCacheBlockedFeatures"

    if-nez p1, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fileFetchFailed(Ljava/lang/String;I)V

    return-void

    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fileFetchFailed(Ljava/lang/String;I)V

    return-void

    :cond_1
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget v1, p1, v0

    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->getInstance()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->setBlockedFeatures(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setBlockedFeaturesVersionForTest(F)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedFeaturesVersion:F

    return-void
.end method

.method public setBlockedUrl(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mFileFetcher:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;

    const-string v1, "list"

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;->jsonStringToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "BFCacheBlockedUrl"

    if-nez p1, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fileFetchFailed(Ljava/lang/String;I)V

    return-void

    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fileFetchFailed(Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->getInstance()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->setBlockedUrl([Ljava/lang/String;)V

    return-void
.end method

.method public setBlockedUrlVersionForTest(F)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedUrlVersion:F

    return-void
.end method

.method public setCommandLine(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "BFCacheConfigManager"

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Command"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BFCACHELOG set CommandLine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BFCACHELOG "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConfigSetting(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Setting"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->getInstance()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->setConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->getInstance()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->setAllowList()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BFCACHELOG "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BFCacheConfigManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentStateForTest(Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    return-void
.end method

.method public setIsNativeInitializedForTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mIsNativeInitialized:Z

    return-void
.end method

.method public updateListsIfRequired(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "BFCacheBlockedFeaturesVersion"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedFeaturesVersion:F

    const-string p1, "BFCacheBlockedUrlVersion"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedUrlVersion:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedFeaturesVersion:F

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBFCacheBlockedFeaturesVersion()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->BLOCKED_FEATURES_CHANGED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->processConfigUpdateState()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBFCacheBlockedFeatures()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->setBlockedFeatures(Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mBlockedUrlVersion:F

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBFCacheBlockedUrlVersion()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->BLOCKED_URL_CHANGED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->processConfigUpdateState()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBFCacheBlockedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->setBlockedUrl(Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->processConfigUpdateState()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BFCACHELOG "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BFCacheConfigManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
