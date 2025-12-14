.class public Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->storeBlocklist(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->storeFetchedFirstPartyList(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private fetchBlocklist(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "SIX"

    const-string v2, "sixBlacklistData"

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->createFetch(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method private fetchFirstPartyList(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "SIX"

    const-string v2, "sixFirstPartyList"

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->createFetch(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method private fetchSuggestedList(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "SIX"

    const-string v2, "sixSuggestedlistData"

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->createFetch(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method public static isSupportedByConfig(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;->isBlockedByBlocklist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "SIX"

    const-string v2, "sixSupported"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private storeBlocklist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "SixGlobalConfigFetcher"

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "storeBlocklist - storing listData: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;->setBlocklistData(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->requestUpdateBlockedExtensions(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "storeBlocklist - listData is empty. does nothing."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private storeFetchedFirstPartyList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "SixGlobalConfigFetcher"

    if-eqz p0, :cond_0

    const-string p0, "storeFetchedFirstPartyList - listData is empty. aborting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "storeFetchedFirstPartyList - storing listData: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixFirstPartyListData;->storeFirstPartyListInString(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "storeFetchedFirstPartyList - init SixManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->initialize()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->detectSixOrigin(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "storeFetchedFirstPartyList - no installed six apps. aborting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SixGlobalConfigFetcher"

    const-string v1, "onFeatureConfigUpdated running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->fetchSuggestedList(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->fetchBlocklist(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->fetchFirstPartyList(Landroid/content/Context;)V

    return-void
.end method
