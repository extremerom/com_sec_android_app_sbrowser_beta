.class public Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;
.super Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/model/thread/TaskExecutor;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/DefaultTaskExecutor;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/DefaultTaskExecutor;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method
