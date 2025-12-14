.class public Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSyncDelegate:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;


# instance fields
.field mSyncInstances:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncObserverHandle:Ljava/lang/Object;

.field private mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncInstances:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->sSyncDelegate:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->sSyncDelegate:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->sSyncDelegate:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initSyncValues()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncInstances:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;->initSyncValues()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public initSyncObservers()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncInstances:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncInstances:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncInstances:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncInstances:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SamsungSyncController;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->initSyncValues()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncStateNotifier:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncObserverHandle:Ljava/lang/Object;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate$1;-><init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;)V

    const/4 v1, 0x7

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncObserverHandle:Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public onSyncStatusChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->mSyncInstances:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncController;->onSyncStatusChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
