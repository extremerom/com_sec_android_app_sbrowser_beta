.class public Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;-><init>()V

    return-object v0
.end method

.method public static getSmartSearchThread()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;

    return-object v0
.end method


# virtual methods
.method public runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
