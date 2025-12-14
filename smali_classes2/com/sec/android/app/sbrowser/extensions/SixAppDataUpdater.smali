.class public Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater$LazyHolder;
    }
.end annotation


# instance fields
.field private mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

.field private mSixAppData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->createSimpleClient()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;-><init>()V

    return-void
.end method

.method private createSixAppData(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isCrxOnlyExt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "p5;dev"

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dev_ext"

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isSIXPkg()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "p5;3rd"

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3rd_party"

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isFromWebStore()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isCrxOnlyExt()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "p5;webFromSix"

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "web_store_from_six"

    goto :goto_1

    :cond_4
    const-string v0, "p5;webStore"

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "web_store"

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isCrxOnlyExt()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "p5;dftFromSix"

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default_ext_from_six"

    goto :goto_1

    :cond_6
    const-string v0, "p5;default"

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default_ext"

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "createSixAppData - wrong instSrc of newData: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SixAppDataUpdater"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    new-instance v14, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v2, v0

    goto :goto_4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isLimited()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getSIVerWhenInstalled()Ljava/lang/String;

    move-result-object v13

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V

    return-object v14
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater$LazyHolder;->a()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v0

    return-object v0
.end method

.method private getSILogID(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/six/SixConstants;->LogIDs:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSILogIDs(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSILogID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isExceptionalSupportCase(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private isListItemDead(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result p0

    const-string v0, "SixAppDataUpdater"

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "isListItemDead - installed, Item in tmpMap should be discarded"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result p0

    const/4 p1, 0x1

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "isListItemDead - installed, Item in mSixAppData should be discarded"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    const-string p0, "isListItemDead - default, Item in mSixAppData should be discarded"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private listDataToJson(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "listDataToJson: "

    const-string v0, "SixAppDataUpdater"

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private removeNotToShowItems(Ljava/util/HashMap;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getMapToInstall()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "SixAppDataUpdater"

    if-nez v0, :cond_0

    const-string v0, "removeNotToShowItems - mapToInstall was NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getListToUninstall()Ljava/util/HashSet;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "removeNotToShowItems - listToUninstall was NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "removeNotToShowItems - Found in mapToInstall. skipping: "

    invoke-static {v5, v4, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "removeNotToShowItems - Found in listToUninstall. skipping: "

    invoke-static {v5, v4, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "removeNotToShowItems - Removing: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method private reviveTerminatedExtIfExist(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "reviveTerminatedExtIfExist - skip, not installed yet: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SixAppDataUpdater"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->reviveTerminatedExtIfExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setNoMoreFirstLaunch()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->updateSecretModeState(Ljava/lang/String;Z)V

    :cond_2
    return v0
.end method

.method private sendSILog(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSILogIDs(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    const v0, 0x5d04a

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->sendSILogIDs(Ljava/util/Set;I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSILogIDs(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const p2, 0x5d049

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->sendSILogIDs(Ljava/util/Set;I)V

    return-void
.end method

.method private sendSILogIDs(Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ","

    invoke-static {p0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/16 p1, 0x26

    const v0, 0x5d049

    if-ne v0, p2, :cond_1

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->sendStatus(IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const v0, 0x5d04a

    if-ne v0, p2, :cond_2

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->sendStatus(IILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setUnsupportedIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->isExceptionalSupportCase(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z

    move-result v0

    const-string v1, "SixAppDataUpdater"

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->shouldBeUnsupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateSixAppData - should be unsupported: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setUnsupported()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "updateSixAppData - Allowed to be supported: "

    invoke-static {p1, p0, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private shouldBeUnsupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "SixAppDataUpdater"

    if-eqz p0, :cond_0

    const-string p0, "shouldBeUnsupported - No pkg name was given."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getExtList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->getAppID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_3
    const-string p0, "shouldBeUnsupported - Unsupported: "

    invoke-static {p0, p2, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const-string p0, "shouldBeUnsupported - No stored extensions list."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private syncOnOffStatus(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isBlockedOrIgnored()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "syncOnOffStatus - turning OFF as blocked: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SixAppDataUpdater"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateAppsWithMapToInstall()V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getMapToInstall()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "SixAppDataUpdater"

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string v3, "SixAppDataUpdater.updateAppsWithMapToInstall"

    invoke-static {v3}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    :cond_1
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    move v6, v5

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x5

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "updateAppsWithMapToInstall - "

    if-eqz v10, :cond_8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result v10

    const-string v12, " will be installed"

    const-string v13, ","

    if-eqz v10, :cond_6

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v8, v13, v7, v12}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {v4, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->compareExtVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-gtz v14, :cond_7

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v7

    const-string v9, " removed from mapToInstall"

    invoke-static {v11, v8, v13, v7, v9}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v8, v13, v7, v12}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " was added to mSixAppData"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz v6, :cond_e

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "Instd"

    :goto_3
    move-object v14, v4

    goto :goto_4

    :cond_a
    const-string v4, "NoInstd"

    goto :goto_3

    :goto_4
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "ON"

    :goto_5
    move-object/from16 v16, v4

    goto :goto_6

    :cond_b
    const-string v4, "OFF"

    goto :goto_5

    :goto_6
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "1stLnch"

    :goto_7
    move-object/from16 v17, v4

    goto :goto_8

    :cond_c
    const-string v4, "EvrLnch"

    goto :goto_7

    :goto_8
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "EvrTpd"

    :goto_9
    move-object/from16 v18, v1

    goto :goto_a

    :cond_d
    const-string v1, "NvrTpd"

    goto :goto_9

    :goto_a
    filled-new-array/range {v9 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "updateAppsWithMapToInstall - %s,%s,%s,%s,%s,%s,%d,%s,%s,%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    const-string v0, "updateAppsWithMapToInstall - no updates"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {v3}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_10
    :goto_b
    const-string v0, "updateAppsWithMapToInstall - No mapToInstall to update. Aborting."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAppsWithMapToShow()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getMapToShow()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "SixAppDataUpdater"

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_d

    :cond_0
    const-string v3, "SixAppDataUpdater.updateAppsWithMapToShow"

    invoke-static {v3}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->removeNotToShowItems(Ljava/util/HashMap;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_1

    move v4, v5

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move v10, v6

    :goto_2
    if-ge v10, v4, :cond_5

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v13

    const-string v14, "updateAppsWithMapToShow - found: "

    const-string v15, ", "

    invoke-static {v14, v9, v15, v10, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v11, v8}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateExceptionalInfo(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v5, v7

    :cond_4
    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v10

    move v11, v7

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    move v11, v6

    :goto_3
    if-nez v11, :cond_6

    const-string v5, "updateAppsWithMapToShow - Not Found in mSixAppData. Added: "

    invoke-static {v5, v9, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v10

    move v5, v7

    :cond_6
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstallSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->setInstallSource(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->clearMapToShow()V

    if-eqz v5, :cond_c

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Instd"

    :goto_5
    move-object v12, v4

    goto :goto_6

    :cond_8
    const-string v4, "NoInstd"

    goto :goto_5

    :goto_6
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "ON"

    :goto_7
    move-object v14, v4

    goto :goto_8

    :cond_9
    const-string v4, "OFF"

    goto :goto_7

    :goto_8
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "1stLnch"

    :goto_9
    move-object v15, v4

    goto :goto_a

    :cond_a
    const-string v4, "EvrLnch"

    goto :goto_9

    :goto_a
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "EvrTpd"

    :goto_b
    move-object/from16 v16, v1

    goto :goto_c

    :cond_b
    const-string v1, "NvrTpd"

    goto :goto_b

    :goto_c
    filled-new-array/range {v7 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "updateAppsWithMapToShow - %s,%s,%s,%s,%s,%s,%d,%s,%s,%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    const-string v0, "updateAppsWithMapToShow - no updates"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {v3}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_e
    :goto_d
    const-string v0, "updateAppsWithMapToShow - empty mapToShow. nothing to do."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateBlockedExtLogging(Z)V
    .locals 14

    const-string v0, "SixAppDataUpdater"

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Instd"

    :goto_1
    move-object v9, v1

    goto :goto_2

    :cond_0
    const-string v1, "NoInstd"

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ON"

    :goto_3
    move-object v11, v1

    goto :goto_4

    :cond_1
    const-string v1, "OFF"

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1stLnch"

    :goto_5
    move-object v12, v1

    goto :goto_6

    :cond_2
    const-string v1, "EvrLnch"

    goto :goto_5

    :goto_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "EvrTpd"

    :goto_7
    move-object v13, p1

    goto :goto_8

    :cond_3
    const-string p1, "NvrTpd"

    goto :goto_7

    :goto_8
    filled-new-array/range {v4 .. v13}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "updateBlockedExtensions - %s,%s,%s,%s,%s,%s,%d,%s,%s,%s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p0, "updateBlockedExtensions - no updates"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private updateConflictsIfExist(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->getNativeExtVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setNoMoreFirstLaunch()V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setEverTapped(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setEverTapped(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateExceptionalInfo(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateInstallingIfInstalled(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->syncOnOffStatus(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v1

    const-string v2, "SixAppDataUpdater"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "updateExceptionalInfo - ON but no permission grant: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setNoMoreFirstLaunch()V

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setEverTapped(Z)V

    move p0, v3

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateExceptionalInfo - Found N badge again case: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setEverTapped(Z)V

    move p0, v3

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->compareExtVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setExtVersion(Ljava/lang/String;)V

    move p0, v3

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "no_six_pkg"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setInstallSource(Ljava/lang/String;)V

    move p0, v3

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateExceptionalInfo - updating package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setPkgName(Ljava/lang/String;)V

    move p0, v3

    :cond_4
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateExceptionalInfo - updating extension name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setAppName(Ljava/lang/String;)V

    move p0, v3

    :cond_5
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getDescription()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateExceptionalInfo - updating description: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v3, p0

    :goto_0
    return v3
.end method

.method private updateInstallingIfInstalled(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v1

    const-string v3, "NoInstd"

    const-string v12, "Instd"

    if-eqz v1, :cond_0

    move-object v7, v12

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v1

    const-string v13, "OFF"

    const-string v14, "ON"

    if-eqz v1, :cond_1

    move-object v9, v14

    goto :goto_1

    :cond_1
    move-object v9, v13

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v1

    const-string v15, "EvrLnch"

    const-string v16, "1stLnch"

    if-eqz v1, :cond_2

    move-object/from16 v10, v16

    goto :goto_2

    :cond_2
    move-object v10, v15

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v1

    const-string v17, "NvrTpd"

    const-string v18, "EvrTpd"

    if-eqz v1, :cond_3

    move-object/from16 v11, v18

    goto :goto_3

    :cond_3
    move-object/from16 v11, v17

    :goto_3
    move-object v4, v2

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "updateInstallingIfInstalled - found: %s,%s,%s,%s,%d,%s,%s,%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "SixAppDataUpdater"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setInstalled(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setNoMoreFirstLaunch()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setEverTapped(Z)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v7, v12

    goto :goto_4

    :cond_5
    move-object v7, v3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v9, v14

    goto :goto_5

    :cond_6
    move-object v9, v13

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v10, v16

    goto :goto_6

    :cond_7
    move-object v10, v15

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v17, v18

    :cond_8
    move-object v4, v2

    move-object v0, v11

    move-object/from16 v11, v17

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "updateInstallingIfInstalled - handled: %s,%s,%s,%s,%d,%s,%s,%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :cond_9
    return v3
.end method

.method private updateLimitedExtensions(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "SixAppDataUpdater"

    if-nez p1, :cond_0

    const-string v0, "updateLimitedExtensions - context is null. Aborting"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_c

    :cond_1
    const-string v3, "SixAppDataUpdater.updateLimitedExtensions"

    invoke-static {v3}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v6, "updateLimitedExtensions - "

    invoke-static {v6, v0, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "updateLimitedExtensions - Failed to get current SI version. Aborting"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v6, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isLimited()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getSIVerWhenInstalled()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v12

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v13

    const-string v14, "updateLimitedExtensions - limited ext.: "

    const-string v15, ","

    invoke-static {v14, v9, v15, v10, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getSIVerWhenInstalled()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getSIVerWhenInstalled()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    invoke-virtual {v8, v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setLimited(Z)V

    invoke-virtual {v8, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setSIVerWhenInstalled(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v8

    xor-int/2addr v8, v10

    invoke-virtual {v9, v11, v8}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    if-nez v7, :cond_3

    :goto_2
    move v7, v10

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8, v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setLimited(Z)V

    invoke-virtual {v8, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setSIVerWhenInstalled(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8, v5}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    if-nez v7, :cond_3

    goto :goto_2

    :cond_5
    const-string v8, "updateLimitedExtensions - wrong status!"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    if-eqz v7, :cond_b

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "Instd"

    :goto_4
    move-object v12, v4

    goto :goto_5

    :cond_7
    const-string v4, "NoInstd"

    goto :goto_4

    :goto_5
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "ON"

    :goto_6
    move-object v14, v4

    goto :goto_7

    :cond_8
    const-string v4, "OFF"

    goto :goto_6

    :goto_7
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "1stLnch"

    :goto_8
    move-object v15, v4

    goto :goto_9

    :cond_9
    const-string v4, "EvrLnch"

    goto :goto_8

    :goto_9
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "EvrTpd"

    :goto_a
    move-object/from16 v16, v1

    goto :goto_b

    :cond_a
    const-string v1, "NvrTpd"

    goto :goto_a

    :goto_b
    filled-new-array/range {v7 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "updateLimitedExtensions - %s,%s,%s,%s,%s,%s,%d,%s,%s,%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    const-string v0, "updateLimitedExtensions - no updates"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {v3}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_c
    const-string v0, "updateLimitedExtensions - no ext to work. Aborting"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addSixAppDataIfNotExist(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 13

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "SixAppDataUpdater"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "addSixAppDataIfNotExist - newData was not added"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setSixAppDataList(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "Instd"

    :goto_3
    move-object v8, p2

    goto :goto_4

    :cond_6
    const-string p2, "NoInstd"

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "ON"

    :goto_5
    move-object v10, p2

    goto :goto_6

    :cond_7
    const-string p2, "OFF"

    goto :goto_5

    :goto_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "1stLnch"

    :goto_7
    move-object v11, p2

    goto :goto_8

    :cond_8
    const-string p2, "EvrLnch"

    goto :goto_7

    :goto_8
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "EvrTpd"

    :goto_9
    move-object v12, p1

    goto :goto_a

    :cond_9
    const-string p1, "NvrTpd"

    goto :goto_9

    :goto_a
    filled-new-array/range {v3 .. v12}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "addSixAppDataIfNotExist - %s,%s,%s,%s,%s,%s,%d,%s,%s,%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    :goto_b
    return-void
.end method

.method public composeSixAppList(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SixAppDataUpdater.composeSixAppList"

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateAppsWithMapToShow()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateAppsWithMapToInstall()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;->getBlocklist(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateBlockedExtensions(Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateLimitedExtensions(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getExtList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateUnsupportedExtensions(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setSixAppDataList(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    return-void
.end method

.method public getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const-string v2, "SixAppDataUpdater"

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Instd"

    :goto_1
    move-object v12, v4

    goto :goto_2

    :cond_2
    const-string v4, "NoInstd"

    goto :goto_1

    :goto_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "ON"

    :goto_3
    move-object v14, v4

    goto :goto_4

    :cond_3
    const-string v4, "OFF"

    goto :goto_3

    :goto_4
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "1stLnch"

    :goto_5
    move-object v15, v4

    goto :goto_6

    :cond_4
    const-string v4, "EvrLnch"

    goto :goto_5

    :goto_6
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "EvrTpd"

    :goto_7
    move-object/from16 v16, v4

    goto :goto_8

    :cond_5
    const-string v4, "NvrTpd"

    goto :goto_7

    :goto_8
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isLimited()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Lmtd"

    :goto_9
    move-object/from16 v17, v3

    goto :goto_a

    :cond_6
    const-string v3, "Ulmtd"

    goto :goto_9

    :goto_a
    filled-new-array/range {v7 .. v17}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "stored:%s,%s,%s,%s,%s,%s,%d,%s,%s,%s,%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string v1, "getSixAppDataList - No data was loaded from SharedPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->removeDuplicatedItemIfExists()V

    :cond_9
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleInstallFailed(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const-string v1, "SixAppDataUpdater"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleInstallFailed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isDev:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",update:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",ver:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",err:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p6, v1}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setUpdateFailed()V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setInstallFailed()V

    :goto_1
    if-eqz p3, :cond_5

    const-string v2, "Dev extension%n- ver: %s%n- %s"

    filled-new-array {p5, p6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setDescription(Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setSixAppDataList(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    const-string p0, "handleDevInstallFailed - NOT FOUND: "

    invoke-static {p0, p2, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_8
    :goto_3
    const-string p0, "handleInstallFailed - No mSixAppData to update, aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    return-void
.end method

.method public removeDuplicatedItemIfExists()V
    .locals 27

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const-string v2, "SixAppDataUpdater"

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v6, "NvrTpd"

    const-string v7, "EvrTpd"

    const-string v8, "EvrLnch"

    const-string v9, "1stLnch"

    const-string v10, "OFF"

    const-string v11, "ON"

    const-string v12, "NoInstd"

    const-string v13, "Instd"

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-eqz v14, :cond_a

    invoke-direct {v1, v0, v14}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->isListItemDead(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "removeDuplicatedItemIfExists - discd:%s,%s,%s,%d,%s,%s,%s"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    const/4 v5, 0x5

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v15, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v21, v13

    goto :goto_1

    :cond_1
    move-object/from16 v21, v12

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v23, v11

    goto :goto_2

    :cond_2
    move-object/from16 v23, v10

    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v24, v9

    goto :goto_3

    :cond_3
    move-object/from16 v24, v8

    :goto_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v25, v7

    goto :goto_4

    :cond_4
    move-object/from16 v25, v18

    :goto_4
    filled-new-array/range {v19 .. v25}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object/from16 v5, v17

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_a

    :cond_5
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    const-string v5, "removeDuplicatedItemIfExists - rplcd:%s,%s,%s,%d,%s,%s,%s"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v21, v13

    goto :goto_6

    :cond_6
    move-object/from16 v21, v12

    :goto_6
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v23, v11

    goto :goto_7

    :cond_7
    move-object/from16 v23, v10

    :goto_7
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v24, v9

    goto :goto_8

    :cond_8
    move-object/from16 v24, v8

    :goto_8
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v25, v7

    goto :goto_9

    :cond_9
    move-object/from16 v25, v18

    :goto_9
    filled-new-array/range {v19 .. v25}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_a
    move-object/from16 v17, v5

    goto :goto_5

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "removeDuplicatedItemIfExists - exception: "

    invoke-static {v5, v0, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move-object/from16 v18, v6

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_10

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v22, v13

    goto :goto_c

    :cond_c
    move-object/from16 v22, v12

    :goto_c
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v24, v11

    goto :goto_d

    :cond_d
    move-object/from16 v24, v10

    :goto_d
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v25, v9

    goto :goto_e

    :cond_e
    move-object/from16 v25, v8

    :goto_e
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v26, v7

    goto :goto_f

    :cond_f
    move-object/from16 v26, v18

    :goto_f
    filled-new-array/range {v19 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "removeDuplicatedItemIfExists - updated: %s,%s,%s,%s,%d,%s,%s,%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_10
    return-void

    :cond_11
    :goto_10
    const-string v0, "removeDuplicatedItemIfExists - no needed. Aborting"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeSixAppData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const-string v1, "SixAppDataUpdater"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "removeSixAppData - No extension ID was given, aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result p2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const-string v0, "removeSixAppData - removed: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ext_id"

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ext_name"

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "601"

    const-string v1, "6110"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setSixAppDataList(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    const-string p1, "removeSixAppData - Not found, failed to remove: "

    invoke-static {p1, p2, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateNBadgeOnAddOns()V

    return-void

    :cond_7
    :goto_2
    const-string p0, "removeSixAppData - No mSixAppData to update, aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestUpdateBlockedExtensions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const-string v1, "SixAppDataUpdater"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->listDataToJson(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateBlockedExtensions(Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "requestUpdateBlockedExtensions - saving updated SixAppData"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setSixAppDataList(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p0, "requestUpdateBlockedExtensions - Does nothing."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "requestUpdateBlockedExtensions - no six app data to work. returning."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reviveTerminatedExtsIfExist()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->reviveTerminatedExtIfExist(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    const-string p0, "SixAppDataUpdater"

    const-string v0, "reviveTerminatedExtsIfExist - Abort. mSixAppData null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public sendSixStatusLog()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ON:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OFF:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    :goto_1
    const-string v3, "no_installed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendSixStatusLog - msgToSend: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SixAppDataUpdater"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "6108"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->sendSILog(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public setSixAppDataList(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setSixAppData(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->sendSixStatusLog()V

    return-void
.end method

.method public updateBlockedExtensions(Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;)Z
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-string v2, "SixAppDataUpdater"

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v0, "SixAppDataUpdater.updateBlockedExtensions"

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;->getBlockedExtensions()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;->getBlockedExtensions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;->getBlockedExtensions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "updateBlockedExtensions - blocklist: "

    invoke-static {v6, v5, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;->getBlockedExtensions()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_6
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "updateBlockedExtensions - found: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->getNativeExtVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->compareExtVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isBlockedOrIgnored()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateBlockedExtensions - blocked. unblock:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setUnblocked()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v3

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_3

    :cond_7
    :goto_2
    move v7, v3

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "updateBlockedExtensions - blocked: "

    invoke-static {v9, v5, v7, v8, v2}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isBlockedOrIgnored()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setBlockedByBlocklist()V

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "ext_id"

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ext_name"

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "601"

    const-string v8, "6150"

    invoke-static {v7, v8, v5}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v5, v3

    move v7, v5

    goto :goto_4

    :goto_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "updateBlockedExtensions - exception: "

    invoke-static {v8, v7, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move v7, v1

    :goto_4
    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isBlockedOrIgnored()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v5, "updateBlockedExtensions - Not found and reset."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setUnblocked()V

    move v5, v3

    goto/16 :goto_1

    :cond_b
    :goto_5
    const-string p1, "updateBlockedExtensions - no blocklist. reset all."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isBlockedOrIgnored()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setUnblocked()V

    move v1, v3

    goto :goto_6

    :cond_d
    move v5, v1

    :cond_e
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateBlockedExtLogging(Z)V

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return v5

    :cond_f
    :goto_7
    const-string p0, "updateBlockedExtensions - no ext to work. returning false."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public updateNBadgeOnAddOns()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateSixAppData(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 8

    const-string v0, "updateSixAppData with"

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->logcatSixAppData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const-string v1, "SixAppDataUpdater"

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const-string v0, "updateSixAppData - mSixAppData was null, initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateSixAppData - found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, v3}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->createSixAppData(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateConflictsIfExist(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setUnsupportedIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateSixAppData - updated"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->logcatSixAppData(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v7, v2

    move-object v2, v0

    move v0, v7

    :goto_1
    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setUnsupportedIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v4

    const-string v5, "updateSixAppData - added: "

    const-string v6, ","

    invoke-static {v5, v0, v6, v3, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v4, v1}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;->getBlocklist(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateBlockedExtensions(Lcom/sec/android/app/sbrowser/common/extensions/SixBlocklistData;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->setExtensionEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setSixAppDataList(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->setInstallSource(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateNBadgeOnAddOns()V

    return-void
.end method

.method public updateUnsupportedExtensions(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    const-string v1, "SixAppDataUpdater"

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUtil;->collectValidStubExtMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "updateUnsupportedExtensions - No pkg names were retrieved. Aborting."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "SixAppDataUpdater.updateUnsupportedExtensions"

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "updateUnsupportedExtensions - supported ext: "

    invoke-static {v4, v3, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isBlockedOrIgnored()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isUnsupported()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setUnsupported()V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isUnsupported()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->isExceptionalSupportCase(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_a
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setUnblocked()V

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->mSixAppData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isUnsupported()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "updateUnsupportedExtensions - Unsupported: "

    invoke-static {v2, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_e
    :goto_4
    const-string p0, "updateUnsupportedExtensions - No six app data to work. Aborting."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
