.class Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$OrderPool;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderPool"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;-><init>()V

    return-void
.end method


# virtual methods
.method public createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
