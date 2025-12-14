.class public Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    return-object v0
.end method


# virtual methods
.method public getThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public initializeThreadPool()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
