.class public Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$Holder;,
        Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;
    }
.end annotation


# static fields
.field static final FULL_CLEANUP_DURATION:J

.field static final WEBAPP_UNOPENED_CLEANUP_DURATION:J


# instance fields
.field private mIsInitialized:Z

.field private mPermissionStore:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStorages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->FULL_CLEANUP_DURATION:J

    const-wide/16 v1, 0x5b

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->WEBAPP_UNOPENED_CLEANUP_DURATION:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->openSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPermissionStore:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    return-object p0
.end method

.method public static clearWebappHistoryForUrls(Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->clearWebappHistoryForUrlsImpl(Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;->destroy()V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$Holder;->a()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    return-object v0
.end method

.method private getOriginsWithWebApk()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-direct {p0, v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getWebApkScopeFromStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/chromium/components/embedder_support/util/Origin;->create(Ljava/lang/String;)Lorg/chromium/components/embedder_support/util/Origin;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/components/embedder_support/util/Origin;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getRegisteredWebappIdsForTesting()Ljava/util/Set;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->openSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "webapp_set"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getWebApkScopeFromStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "webapk-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initStorages(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "webapp_set"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mIsInitialized:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPermissionStore:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->initStorage()V

    iput-boolean v1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mIsInitialized:Z

    :cond_2
    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->open(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->open(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method private static openSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "webapp_registry"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static refreshSharedPrefsForTesting()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$Holder;->b(Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->initStorages(Ljava/lang/String;Z)V

    return-void
.end method

.method public static unregisterWebappsForUrls(Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->unregisterWebappsForUrlsImpl(Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;->destroy()V

    return-void
.end method

.method private unregisterWebappsForUrlsImpl(Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;->matchesUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->delete()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "webapp_set"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method

.method public static warmUpSharedPrefs()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->initStorages(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public clearWebappHistoryForUrlsImpl(Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;->matchesUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->clearHistory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public findWebApksWithPendingUpdate()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getPendingUpdateRequestPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getWebApkPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->isWebApkInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getOriginsWithInstalledApp()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getOriginsWithWebApk()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPermissionStore:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->getStoredOrigins()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getPermissionStore()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPermissionStore:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;

    return-object p0
.end method

.method public getWebappDataStorage(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    return-object p0
.end method

.method public hasAtLeastOneWebApkForOrigin(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getWebApkScopeFromStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isWebApkInstalled(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    :catch_0
    return p0
.end method

.method public register(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$1;-><init>(Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public unregisterOldWebapps(J)V
    .locals 8

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "last_cleanup"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long v0, p1, v0

    sget-wide v4, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->FULL_CLEANUP_DURATION:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getWebApkPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "webapk-"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->isWebApkInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getLastUsedTimeMs()J

    move-result-wide v4

    sub-long v4, p1, v4

    sget-wide v6, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->WEBAPP_UNOPENED_CLEANUP_DURATION:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->delete()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->mStorages:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string p2, "webapp_set"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
