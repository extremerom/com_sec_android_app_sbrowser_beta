.class public abstract Lv/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSearchDocumentClassM"

.field private static volatile sCachedAppSearchClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static volatile sGlobalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv/c;->sLock:Ljava/lang/Object;

    new-instance v0, LN/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    sput-object v0, Lv/c;->sCachedAppSearchClasses:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, LN/f;

    invoke-direct {v1, v0}, LN/A;-><init>(I)V

    :try_start_0
    new-instance v2, Lcom/google/android/appfunctions/schema/common/v1/browser/$$__AppSearch__DocumentClassMap_b7e13e680e275090868ffd5b6b98cb5cdf052dc264fe158e9aa423d9029f21e4_0;

    invoke-direct {v2}, Lcom/google/android/appfunctions/schema/common/v1/browser/$$__AppSearch__DocumentClassMap_b7e13e680e275090868ffd5b6b98cb5cdf052dc264fe158e9aa423d9029f21e4_0;-><init>()V

    new-instance v3, Lcom/google/android/appfunctions/$$__AppSearch__DocumentClassMap_6127973e048bee759ee24aea828057cfd7e1bfb18ec65f4918f801cb0d6f942b_0;

    invoke-direct {v3}, Lcom/google/android/appfunctions/$$__AppSearch__DocumentClassMap_6127973e048bee759ee24aea828057cfd7e1bfb18ec65f4918f801cb0d6f942b_0;-><init>()V

    new-instance v4, Lcom/samsung/android/sdk/aisuggestion/schema/clip/coupon/$$__AppSearch__DocumentClassMap_808130ad179b8034308c3c198c8fd3bc6c4174e2b3f1ac9430c8f8eb363ae1af_0;

    invoke-direct {v4}, Lcom/samsung/android/sdk/aisuggestion/schema/clip/coupon/$$__AppSearch__DocumentClassMap_808130ad179b8034308c3c198c8fd3bc6c4174e2b3f1ac9430c8f8eb363ae1af_0;-><init>()V

    new-instance v5, Landroidx/appsearch/builtintypes/$$__AppSearch__DocumentClassMap_86d7733cee08f17e3c16125cd7eadf878eba585e0230ce8aec166fc6ba4ad899_0;

    invoke-direct {v5}, Landroidx/appsearch/builtintypes/$$__AppSearch__DocumentClassMap_86d7733cee08f17e3c16125cd7eadf878eba585e0230ce8aec166fc6ba4ad899_0;-><init>()V

    new-instance v6, Landroidx/appsearch/usagereporting/$$__AppSearch__DocumentClassMap_d8c38be6e7324bce3bef36b39418d987bb4285b33ec2e33e3aea0d9ccb6519d7_0;

    invoke-direct {v6}, Landroidx/appsearch/usagereporting/$$__AppSearch__DocumentClassMap_d8c38be6e7324bce3bef36b39418d987bb4285b33ec2e33e3aea0d9ccb6519d7_0;-><init>()V

    const/4 v7, 0x5

    new-array v7, v7, [Lv/c;

    aput-object v2, v7, v0

    const/4 v0, 0x1

    aput-object v3, v7, v0

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/c;

    invoke-virtual {v2}, Lv/c;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, LN/f;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, LN/c;

    invoke-virtual {v0}, LN/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    move-object v2, v0

    check-cast v2, LN/b;

    invoke-virtual {v2}, LN/b;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, LN/b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    sget-object v0, Lv/c;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv/c;->sCachedAppSearchClasses:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    monitor-enter v0

    :try_start_1
    sget-object v2, Lv/c;->sCachedAppSearchClasses:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-object v1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static getAssignableClassBySchemaName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lv/c;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load document class \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\". Perhaps the class was proguarded out?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppSearchDocumentClassM"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static getGlobalMap()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lv/c;->sGlobalMap:Ljava/util/Map;

    if-nez v0, :cond_1

    sget-object v0, Lv/c;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv/c;->sGlobalMap:Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-static {}, Lv/c;->a()Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lv/c;->sGlobalMap:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lv/c;->sGlobalMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public abstract getMap()Ljava/util/Map;
.end method
