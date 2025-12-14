.class Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$DisorderPool;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisorderPool"
.end annotation


# instance fields
.field private final mMaxThreadCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$DisorderPool;->mMaxThreadCount:I

    return-void
.end method


# virtual methods
.method public createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$DisorderPool;->mMaxThreadCount:I

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
