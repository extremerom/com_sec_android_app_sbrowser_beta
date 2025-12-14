.class Lcom/sec/terrace/browser/notifications/TinNotificationThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sNotificationThread:Lcom/sec/terrace/browser/notifications/TinNotificationThread;


# instance fields
.field private mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/notifications/TinNotificationThread;
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->sNotificationThread:Lcom/sec/terrace/browser/notifications/TinNotificationThread;

    if-nez v0, :cond_1

    const-class v0, Lcom/sec/terrace/browser/notifications/TinNotificationThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->sNotificationThread:Lcom/sec/terrace/browser/notifications/TinNotificationThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/terrace/browser/notifications/TinNotificationThread;

    invoke-direct {v1}, Lcom/sec/terrace/browser/notifications/TinNotificationThread;-><init>()V

    sput-object v1, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->sNotificationThread:Lcom/sec/terrace/browser/notifications/TinNotificationThread;

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
    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->sNotificationThread:Lcom/sec/terrace/browser/notifications/TinNotificationThread;

    return-object v0
.end method


# virtual methods
.method public runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
