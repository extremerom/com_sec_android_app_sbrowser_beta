.class public Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;


# instance fields
.field private mModelMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncLock:Ljava/lang/Object;

.field private mSyncManagerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->INSTANCE:Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->mSyncLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->mModelMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->mSyncManagerMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->INSTANCE:Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    return-object v0
.end method


# virtual methods
.method public getModel(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->mSyncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->mModelMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized getSyncManager(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;
    .locals 3

    const-string v0, "getSyncManager : "

    monitor-enter p0

    :try_start_0
    const-string v1, "ModelManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->mSyncManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->mSyncManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->mSyncManagerMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->mSyncManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
