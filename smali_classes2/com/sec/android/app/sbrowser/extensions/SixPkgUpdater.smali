.class public Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;,
        Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$SixPkgUpdaterStatus;
    }
.end annotation


# static fields
.field private static sUpdaterStatus:I
    .annotation build Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$SixPkgUpdaterStatus;
    .end annotation
.end field


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBgHandler:Landroid/os/Handler;

.field private mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

.field private mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

.field private mIDListToUninstall:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;

.field private mInstalledExtList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mMapToInstall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mMapToShow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mSixPkgReceiver:Landroid/content/BroadcastReceiver;

.field private mTerraceExtensionsLoader:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mBgHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    return-object p0
.end method

.method private checkUpdate()V
    .locals 9

    const-string v0, "checkUpdate running.."

    const-string v1, "SixPkgUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mTerraceExtensionsLoader:Z

    if-nez v0, :cond_0

    const-string p0, "checkUpdate - Native is not ready. Aborting!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto/16 :goto_9

    :cond_1
    sput v2, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstalledExtensionsList()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstalledPkgList()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->checkDefaultExtUpdate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->checkUpdatesFromBothListsIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handlePkgOnlyCaseIfNeeded()V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handleCrxOnlyCase()V

    :goto_4
    sput v2, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    const-string v0, "checkUpdate - all list generated.."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkUpdate - mapToShow: %s,%s,%s,%b,%d,%b"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkUpdate - mapToInstall: %s,%s,%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "checkUpdate - idToUninstall: "

    invoke-static {v2, v0, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    :goto_8
    const-string p0, "checkUpdate - Both lists are empty. Nothing to do."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    return-void

    :cond_c
    :goto_9
    const-string p0, "checkUpdate - already working.."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkUpdatesFromBothListsIfNeeded()V
    .locals 7

    const-string v0, "SixPkgUpdater.checkUpdatesFromBothListsIfNeeded"

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkUpdatesFromBothListsIfNeeded - in mInstalledExtList: "

    const-string v6, "SixPkgUpdater"

    invoke-static {v5, v4, v6}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handleInstalledExts(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isCrxOnlyExt()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handleCrxOnlyExt(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handleUninstallExt(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method private copyCrxFromSixPackage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "/"

    const-string v2, "content://"

    const/4 v3, 0x0

    const-string v4, "SixPkgUpdater"

    if-nez p2, :cond_0

    const-string v0, "copyCrxFromSixPackage - context is null. Aborting"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "copyCrxFromSixPackage - Unable to get ContentResolver. Aborting"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const-string v6, "copyCrxFromSixPackage - copy start.."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/ext_tmp/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->makeDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, "copyCrxFromSixPackage - Unable to create a directory. Aborting."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    :try_start_0
    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    move-object v7, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".contentprovider"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, ".crx"

    invoke-static {v7, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v7, "r"

    invoke-virtual {v5, v0, v7}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    long-to-int v0, v9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    move-object/from16 v19, v14

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v15, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    int-to-long v9, v0

    const-wide/16 v17, 0x0

    cmp-long v0, v9, v17

    if-gtz v0, :cond_7

    if-eqz v16, :cond_6

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v14

    goto/16 :goto_8

    :cond_6
    :goto_1
    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v15}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto/16 :goto_a

    :cond_7
    :try_start_e
    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    const-wide/16 v10, 0x0

    move-object v9, v15

    move-object/from16 v19, v14

    move-object/from16 v14, v16

    :try_start_f
    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    cmp-long v0, v9, v17

    if-gtz v0, :cond_9

    if-eqz v16, :cond_8

    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :goto_2
    move-object v1, v0

    goto :goto_8

    :cond_8
    :goto_3
    :try_start_11
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    invoke-virtual {v15}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :try_start_15
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    return-object v3

    :cond_9
    :try_start_16
    const-string v0, "copyCrxFromSixPackage - copy finish.."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-eqz v16, :cond_a

    :try_start_17
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :cond_a
    :try_start_18
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    invoke-virtual {v15}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :try_start_1b
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    invoke-static {v6, v1, v2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_6
    move-exception v0

    :goto_4
    move-object v1, v0

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v19, v14

    goto :goto_4

    :goto_5
    :try_start_1d
    const-string v0, "copyCrxFromSixPackage - Nothing read.."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v16, :cond_b

    :try_start_1e
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :cond_b
    :try_start_1f
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    invoke-virtual {v15}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    :try_start_21
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    :try_start_22
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :try_start_23
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0

    return-object v3

    :goto_6
    if-eqz v16, :cond_c

    :try_start_24
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_25
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    throw v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    :catchall_9
    move-exception v0

    move-object/from16 v19, v14

    goto :goto_2

    :goto_8
    :try_start_26
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    goto :goto_9

    :catchall_a
    move-exception v0

    move-object v2, v0

    :try_start_27
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    :goto_a
    if-eqz v15, :cond_d

    :try_start_28
    invoke-virtual {v15}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    goto :goto_b

    :catchall_b
    move-exception v0

    move-object v2, v0

    :try_start_29
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_b
    throw v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    :goto_c
    :try_start_2a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v0

    move-object v2, v0

    :try_start_2b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    :goto_e
    if-eqz v7, :cond_e

    :try_start_2c
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    move-object v2, v0

    :try_start_2d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_f
    throw v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    :goto_10
    if-eqz v5, :cond_f

    :try_start_2e
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_e

    goto :goto_11

    :catchall_e
    move-exception v0

    move-object v2, v0

    :try_start_2f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_11
    throw v1
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_0

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyCrxFromSixPackage - Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v3

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyCrxFromSixPackage - RuntimeException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v3

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyCrxFromSixPackage - IndexOutOfBoundsException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIconCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handleCrxInstallFailed(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method private getInstalledExtensionsList()V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "SixPkgUpdater.getInstalledExtensionsList"

    invoke-static {v1}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstalledExtensionsProperties()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "SixPkgUpdater"

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->getExtId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstallSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getInstalledExtensionsList - instSrc from native: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->getExtId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->isInstalledThruSixPkg()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "3rd_party"

    goto :goto_2

    :cond_3
    const-string v5, "no_six_pkg"

    :cond_4
    :goto_2
    move-object v12, v5

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    new-instance v15, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->getExtName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->getExtId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->getExtDesc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->getExtVer()Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v4, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v6, v15

    move-object/from16 v20, v15

    move v15, v4

    invoke-direct/range {v6 .. v19}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V

    move-object/from16 v4, v20

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "getInstalledExtensionsList - No properties copied."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {v1}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_3
    const-string v0, "getInstalledExtensionsList - No extensions retrieved."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method private getInstalledPkgList()V
    .locals 25

    move-object/from16 v0, p0

    const-string v1, ","

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    const-string v3, "SixPkgUpdater"

    if-nez v2, :cond_0

    const-string v0, "getInstalledPkgList - context is null. Aborting!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "SixPkgUpdater.getInstalledPkgList"

    invoke-static {v2}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "six://ex"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "getInstalledPkgList - No corresponding pkg exists. Aborting!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v15, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    const-string v7, "extension-id"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v14, v6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :goto_3
    new-instance v13, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v6, v5}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->isDevSixPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "dev_ext"

    :goto_4
    move-object v12, v6

    goto :goto_5

    :cond_7
    const-string v6, "3rd_party"

    goto :goto_4

    :goto_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v6, v13

    move-object v7, v5

    move-object v9, v14

    move-object/from16 v22, v13

    move-object v13, v15

    move-object/from16 v23, v14

    move/from16 v14, v16

    move-object/from16 v24, v15

    move/from16 v15, v17

    move/from16 v16, v20

    move/from16 v17, v21

    invoke-direct/range {v6 .. v19}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    move-object/from16 v8, v22

    move-object/from16 v7, v23

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInstalledPkgList - added: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_8
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "getInstalledPkgList - No pkg was retrieved."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {v2}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    return-object v0
.end method

.method private getMergedSixAppData(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;
    .locals 5

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->clone(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->compareExtVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "SixPkgUpdater"

    const-string v3, ", "

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "getMergedSixAppData - from pkgMap: "

    invoke-static {v4, p4, v3}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->isInDefaultExtList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "p3S;dftExt;"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "default_ext"

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "p3F;notInList;"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "p3F;dftExtDisabled"

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "web_store"

    :goto_1
    const-string v1, "getMergedSixAppData - from native: "

    invoke-static {v1, p4, v3}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setExtensionId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setInstallSource(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handleCrxInstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method private handleCrxInstallFailed(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 9

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, v0, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "handleCrxInstallFailed: %s,ver:%s,update:%b,stat:%d,err:%s"

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "SixPkgUpdater"

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, p2

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v5, v0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    move-object v4, p1

    move v6, p3

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->handleInstallFailed(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p2

    const/4 p5, 0x1

    invoke-virtual {p2, p5}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    if-eqz p5, :cond_1

    invoke-virtual {p5, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->removeInstalledId(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result p5

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result p3

    invoke-virtual {v1, p1, p2, p5, p3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->reloadPreloadAction(Ljava/lang/String;ZZZ)V

    goto :goto_2

    :cond_2
    const-string p2, "handleCrxInstallFailed - updatedData NOT found. Something\'s wrong!!"

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "ext_id"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "601"

    const-string p5, "6113"

    invoke-static {p3, p5, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->performSixPkgUpdateIfNeeded()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    if-nez p2, :cond_4

    const-string p0, "handleCrxInstallFailed - No callback to call for "

    const-string p2, ".Aborting"

    invoke-static {p0, p1, p2, p4}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p2, "handleCrxInstallFailed - Update SixPreferenceManager for "

    invoke-static {p2, p1, p4}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;->onCrxInstallFailed(Ljava/lang/String;)V

    return-void
.end method

.method private handleCrxInstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v8, p4

    move/from16 v1, p7

    const-string v2, "handleCrxInstalled: "

    const-string v3, ","

    const-string v4, ",update:"

    invoke-static {v2, v15, v3, v8, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",stat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, "SixPkgUpdater"

    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->values()[Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    move-result-object v2

    aget-object v1, v2, v1

    sget-object v2, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->DISABLED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x1

    if-eqz p5, :cond_5

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    new-instance v17, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v11

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v12

    sget-object v3, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->LIMITED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    if-ne v1, v3, :cond_0

    move/from16 v18, v13

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_1

    :cond_1
    move-object/from16 v19, v2

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, v17

    move-object v2, v4

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move/from16 v13, v18

    move-object/from16 v20, v14

    move-object/from16 v14, v19

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    move-object/from16 v21, v20

    goto/16 :goto_a

    :cond_2
    move-object/from16 v20, v14

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleCrxInstalled - Not Found in MapToInstall : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    sget-object v3, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->LIMITED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    if-ne v1, v3, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    move/from16 v13, v16

    :goto_2
    if-ne v1, v3, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_3

    :cond_4
    move-object/from16 v18, v2

    :goto_3
    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v7, "3rd_party"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v1, v17

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object v0, v14

    move-object/from16 v14, v18

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    goto/16 :goto_a

    :cond_5
    move-object v0, v14

    const-string v3, "handleCrxInstalled - Installed crx only ext: "

    invoke-static {v3, v15, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->compareExtVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    const-string v3, "handleCrxInstalled - ext in mapToInstall will not be installed: "

    invoke-static {v3, v15, v14}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const-string v3, "handleCrxInstalled - ext in mapToInstall will be installed: "

    invoke-static {v3, v15, v14}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v3

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v15, v8}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->isGivenDefaultExt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p1S;dftExt;"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "default_ext"

    :goto_5
    move-object v7, v3

    goto :goto_7

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p1F;notDft;"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const-string v3, "p1F;dftExtDisabled"

    invoke-static {v15, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const-string v3, "web_store"

    goto :goto_5

    :goto_7
    const-string v3, "handleCrxInstalled - install src will be: "

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    sget-object v3, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->LIMITED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    if-ne v1, v3, :cond_a

    move/from16 v18, v13

    goto :goto_8

    :cond_a
    move/from16 v18, v16

    :goto_8
    if-ne v1, v3, :cond_b

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_9

    :cond_b
    move-object/from16 v19, v2

    :goto_9
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v1, v17

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move/from16 v13, v18

    move-object/from16 v21, v14

    move-object/from16 v14, v19

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V

    :goto_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateSixAppData(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v15}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->removeInstalledId(Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v4

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v3

    invoke-virtual {v5, v15, v2, v4, v3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->reloadPreloadAction(Ljava/lang/String;ZZZ)V

    move-object/from16 v3, v21

    goto :goto_b

    :cond_d
    const-string v2, "handleCrxInstalled - savedData NOT found. Something\'s wrong!!"

    move-object/from16 v3, v21

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object v2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->deleteExtIcon(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->detectSixOrigin(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "ext_id"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ext_name"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "601"

    const-string v4, "6100"

    invoke-static {v1, v4, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput v16, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->performSixPkgUpdateIfNeeded()V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    if-nez v1, :cond_e

    const-string v0, "handleCrxInstalled - No callback to call for "

    const-string v1, ".Aborting"

    invoke-static {v0, v15, v1, v3}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_e
    const-string v1, "handleCrxInstalled - Update SixPreferenceManager for "

    invoke-static {v1, v15, v3}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    invoke-interface {v0, v15}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;->onCrxInstalled(Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method private handleCrxOnlyCase()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledExtList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isCrxOnlyExt()Z

    move-result v4

    const-string v5, "SixPkgUpdater"

    if-eqz v4, :cond_3

    const-string v4, "no_six_pkg"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->isInDefaultExtList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "p2S;dftExt;"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "default_ext"

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "p2F;notInList;"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v4, "p2F;dftExtDisabled"

    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v4, "web_store"

    :goto_2
    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setInstallSource(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleCrxOnlyCase - added to mMapToShow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "handleCrxOnlyCase - added to mIDListToUninstall: "

    invoke-static {v1, v3, v5}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "handleCrxOnlyCase - mIDListToUninstall has: "

    invoke-static {v1, v3, v5}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private handleCrxOnlyExt(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->isInDefaultExtList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "p4S;dftExt;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default_ext"

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "p4F;notInList;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "p4F;dftExtDisabled"

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "web_store"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setInstallSource(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "handleCrxOnlyExt - without six pkg. mMapToShow added: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SixPkgUpdater"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleCrxUninstalled(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCrxUninstalled running with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixPkgUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v2, "handleCrxUninstalled - error: "

    invoke-static {v2, p3, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->removeSixAppData(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->removeUninstalledId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->isInDefaultExtList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->checkUpdates()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "handleCrxUninstalled - removed from mIDListToUninstall: "

    invoke-static {v2, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "handleCrxUninstalled - not found in mIDListToUninstall: "

    invoke-static {v2, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sput v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->performSixPkgUpdateIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    if-nez v0, :cond_3

    const-string p0, "handleCrxUninstalled - No callback to call, aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "handleCrxUninstalled - calling onCrxUninstalled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;->onCrxUninstalled(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private handleInstalledExts(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result v1

    const-string v2, "SixPkgUpdater"

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, p2, v3}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->shouldUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getMergedSixAppData(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleInstalledExts - added to mMapToShow: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "handleInstalledExts - added to mMapToInstall: "

    invoke-static {p1, p3, v2}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handlePkgAdded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "receiver_data_extension_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handlePkgAdded - running with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "SixPkgUpdater"

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handlePkgReplaced(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "handlePkgAdded - already installing. Aborting"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v4, "receiver_data_package_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "receiver_data_application_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "receiver_data_version_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-direct {v0, v1, v14}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->isDevSixPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "dev_ext"

    :goto_0
    move-object v10, v4

    goto :goto_1

    :cond_2
    const-string v4, "3rd_party"

    goto :goto_0

    :goto_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v3

    move-object v11, v2

    move-object/from16 v22, v12

    move/from16 v12, v18

    move-object/from16 v23, v13

    move/from16 v13, v19

    move-object/from16 v24, v14

    move/from16 v14, v20

    move-object/from16 v25, v15

    move/from16 v15, v21

    invoke-direct/range {v4 .. v17}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    move-object/from16 v5, v22

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->addSixAppDataIfNotExist(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    sget v4, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    if-eqz v4, :cond_3

    const-string v0, "handlePkgAdded - Installer busy. Added to mapToInstall"

    move-object/from16 v4, v25

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    move-object/from16 v4, v25

    const/4 v6, 0x2

    sput v6, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    move-object/from16 v6, v24

    invoke-direct {v0, v1, v3, v6}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->installCrx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ext_name"

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "601"

    const-string v2, "6112"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_4
    const-string v1, "handlePkgAdded - Install failed"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result v7

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v6, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->handleInstallFailed(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;->onCrxInstallFailed(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private handlePkgOnlyCaseIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mInstalledPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handlePkgOnlyCaseIfNeeded - added to mMapToInstall: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SixPkgUpdater"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handlePkgRemoved(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "receiver_data_package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlePkgRemoved - running with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixPkgUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstalledExtId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "handlePkgRemoved - Empty ID. Aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handlePkgRemoved - ext to uninstall: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstallFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "handlePkgRemoved - removing list without crx uninstall: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->removeSixAppData(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;->onCrxUninstalled(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isCrxOnlyExt()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "handlePkgRemoved - skip uninstalling ext not from six pkg: "

    invoke-static {p0, v0, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget v2, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    if-eqz v2, :cond_4

    const-string p0, "handlePkgRemoved - Installer busy. Adding to listToUninstall"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v2, 0x2

    sput v2, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->uninstallCrx(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext_id"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstalledExtAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ext_name"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "601"

    const-string v0, "6114"

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    const-string p1, "handlePkgRemoved - Install failed"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    sput p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    :goto_0
    return-void
.end method

.method private handlePkgReplaced(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "receiver_data_extension_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "receiver_data_package_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "handlePkgReplaced - running with "

    const-string v14, "SixPkgUpdater"

    invoke-static {v4, v3, v14}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "handlePkgReplaced - already replacing. Aborting"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {v0, v1, v15}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->isDevSixPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-direct {v0, v1, v3, v15}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->shouldUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "handlePkgReplaced - Not updatable. Aborting"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v4, "receiver_data_application_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "receiver_data_version_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    if-eqz v18, :cond_2

    const-string v4, "dev_ext"

    :goto_0
    move-object v10, v4

    goto :goto_1

    :cond_2
    const-string v4, "3rd_party"

    goto :goto_0

    :goto_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v4, v12

    move-object v5, v15

    move-object v6, v13

    move-object v7, v3

    move-object v11, v2

    move-object/from16 v23, v12

    move/from16 v12, v19

    move-object/from16 v24, v13

    move/from16 v13, v20

    move-object/from16 v25, v14

    move/from16 v14, v21

    move-object/from16 v26, v15

    move/from16 v15, v22

    invoke-direct/range {v4 .. v17}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    move-object/from16 v5, v23

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v4, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    if-eqz v4, :cond_3

    const-string v0, "handlePkgReplaced - Installer busy. Added to mapToInstall"

    move-object/from16 v4, v25

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    move-object/from16 v4, v25

    const/4 v5, 0x2

    sput v5, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    move-object/from16 v5, v26

    invoke-direct {v0, v1, v3, v5}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->updateCrx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ext_name"

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "601"

    const-string v2, "6115"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_4
    const-string v1, "handlePkgReplaced - Install failed."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v6, v3

    move/from16 v7, v18

    move-object v9, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->handleInstallFailed(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;->onCrxInstallFailed(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private handleUninstallExt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "SixPkgUpdater"

    if-eqz p0, :cond_0

    const-string p0, "handleUninstallExt - added : "

    invoke-static {p0, p2, p1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "handleUninstallExt - already has: "

    invoke-static {p0, p2, p1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handleCrxUninstalled(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private initializeInternal()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->initialized()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mTerraceExtensionsLoader:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->registerSixUpdateReceiver()V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->setCrxChangeCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$LoadIconCallback;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->setCrxChangeCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;)V

    return-void
.end method

.method private installCrx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installCrx running with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixPkgUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->installOrUpdateCrx(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "installCrx - data retrieving failed, aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->launchInstallCrx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private installOrUpdateCrx(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->copyCrxFromSixPackage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isDevSixPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string p0, "SixPkgUpdater"

    const-string v0, "isDevSixPkg - MyFiles case: "

    const-string v1, "isDevSixPkg - adb case: "

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->q(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->C(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x0

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.myfiles"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "com.google.android.packageinstaller"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDevSixPkg - exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    const-string p1, "isDevSixPkg - not a dev pkg: "

    invoke-static {p1, p2, p0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isPkgUpdatable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string p0, "SixPkgUpdater"

    const-string v0, "isPkgUpdatable - Updatable. pkgVer:"

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->getNativeExtVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, p3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->compareExtVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const-string v4, ", extVer:"

    if-ne p3, v3, :cond_0

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p3, "isPkgUpdatable - NOT Updatable. pkgVer:"

    invoke-static {p3, p1, v4, p2, p0}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "isPkgUpdatable - exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handlePkgAdded(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handlePkgRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->handlePkgReplaced(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->installCrx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static makeDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "makeDirectory - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SixPkgUpdater"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    return v0
.end method

.method public static bridge synthetic o(I)V
    .locals 0

    sput p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    return-void
.end method

.method private performDefaultExtUpdateIfNeeded()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    const-string v3, "SixPkgUpdater"

    if-nez v0, :cond_0

    const-string p0, "performDefaultExtUpdateIfNeeded - NO default ext loader"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sget v4, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    if-eqz v4, :cond_1

    const-string p0, "performDefaultExtUpdateIfNeeded - Installer busy"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v4, 0x2

    sput v4, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->uninstallDefaultExts()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "performDefaultExtUpdateIfNeeded - Uninstall default ext first"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->installDefaultExts(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "performDefaultExtUpdateIfNeeded - Install default ext first"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    sput v2, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    :cond_4
    return v2
.end method

.method private registerSixUpdateReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mSixPkgReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$4;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mSixPkgReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mSixPkgReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "six_update"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ll2/b;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private shouldUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->isPkgUpdatable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "SixPkgUpdater"

    if-eqz p0, :cond_0

    const-string p0, "shouldUpdate - 3rd party, will update: "

    invoke-static {p0, p3, p1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "shouldUpdate - 3rd party, no update: "

    invoke-static {p0, p3, p1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private unregisterSixUpdateReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mSixPkgReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mSixPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Ll2/b;->d(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private updateCrx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "updateCrx running with "

    const-string v1, "SixPkgUpdater"

    invoke-static {v0, p3, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->installOrUpdateCrx(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p0, "updateCrx - data retrieving failed, aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ext_id"

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ext_name"

    invoke-virtual {p3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "601"

    const-string v0, "6111"

    invoke-static {p0, v0, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->launchInstallCrx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private updateSixOriginIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SixPkgUpdater"

    const-string v1, "updateSixOriginIfNeeded running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isFirstPartySix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public changeDefaultExtStatus(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)V
    .locals 5

    const-string v0, "SixPkgUpdater"

    if-nez p1, :cond_0

    const-string p0, "changeDefaultExtStatus - Abort. appData null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isUnsupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "changeDefaultExtStatus - Abort. Unsupported ext"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isLimited()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "changeDefaultExtStatus - Abort. Limited ext"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "changeDefaultExtStatus - Abort. Blocked ext"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeDefaultExtStatus - Turning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string v2, "ON"

    goto :goto_0

    :cond_4
    const-string v2, "OFF"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setNoMoreFirstLaunch()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->updateSecretModeState(Ljava/lang/String;Z)V

    return-void
.end method

.method public changeExtensionStatus(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeExtensionStatus running with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixPkgUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mTerraceExtensionsLoader:Z

    if-nez p0, :cond_0

    const-string p0, "changeExtensionStatus - Native is not ready. Aborting!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->changeExtensionStatus(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "changeExtensionStatus - sixAppData not found"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result p0

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->reloadPreloadAction(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public checkDefaultExtUpdate()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->collectDefaultCrxInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->checkUpdates()V

    :cond_0
    return-void
.end method

.method public clearMapToShow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public collectInstalledExtInfo()V
    .locals 1

    const-string v0, "SixPkgUpdater.collectInstalledExtInfo"

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->checkUpdate()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->updateSixOriginIfNeeded()V

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "SixPkgUpdater"

    const-string v1, "destroy running.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->unregisterSixUpdateReceiver()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mDefaultLoader:Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->setCrxInstallCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->setLoadIconCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;)V

    return-void
.end method

.method public getListToUninstall()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    return-object p0
.end method

.method public getMapToInstall()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    return-object p0
.end method

.method public getMapToShow()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToShow:Ljava/util/HashMap;

    return-object p0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "initialize running.."

    const-string v1, "SixPkgUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mAppContext:Landroid/content/Context;

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->initializeInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initialize Exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadExtensionIcon(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "loadExtensionIcon running with "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SixPkgUpdater"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->loadExtensionIcon(Ljava/lang/String;)V

    return-void
.end method

.method public performSixPkgUpdateIfNeeded()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "performSixPkgUpdateIfNeeded running "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->sUpdaterStatus:I

    const-string v2, "SixPkgUpdater"

    invoke-static {v0, v1, v2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->performDefaultExtUpdateIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIDListToUninstall:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "performSixPkgUpdateIfNeeded - Need to bg uninstall"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mBgHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mMapToInstall:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "performSixPkgUpdateIfNeeded - Need to bg install"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mBgHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public reviveTerminatedExtIfExist(Ljava/lang/String;)Z
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "reviveTerminatedExtIfExist running for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SixPkgUpdater"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->reviveTerminatedExtIfExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setCrxInstallCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mCrxCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    return-void
.end method

.method public setLoadIconCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->mIconCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;

    return-void
.end method

.method public uninstallCrx(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "SixPkgUpdater"

    if-eqz p0, :cond_0

    const-string p0, "uninstallCrx - No ID to uninstall. Aborting.."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "uninstallCrx running with "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->launchUninstallCrx(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
