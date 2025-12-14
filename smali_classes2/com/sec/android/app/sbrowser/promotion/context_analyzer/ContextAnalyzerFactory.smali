.class public Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create()Lcom/sec/android/app/sbrowser/promotion/context_analyzer/IContextAnalyzer;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method
