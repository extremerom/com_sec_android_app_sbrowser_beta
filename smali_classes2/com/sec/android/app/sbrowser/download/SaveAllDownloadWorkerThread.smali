.class public Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SaveAllDownloadWorkerThread:Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;


# instance fields
.field private mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;->SaveAllDownloadWorkerThread:Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getSaveAllWorkerThread()Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;->SaveAllDownloadWorkerThread:Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;

    return-object v0
.end method


# virtual methods
.method public runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
