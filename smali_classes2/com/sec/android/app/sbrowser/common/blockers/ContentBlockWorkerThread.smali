.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;
.super Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread$LazyHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread$LazyHolder;->a()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 0

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
