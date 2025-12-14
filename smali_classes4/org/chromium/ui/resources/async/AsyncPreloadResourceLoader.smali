.class public Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
.super Lorg/chromium/ui/resources/ResourceLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;,
        Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mCreator:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;

.field private final mOutstandingLoads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskQueue:Lorg/chromium/base/task/TaskRunner;


# direct methods
.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/resources/ResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    const/4 p1, 0x5

    invoke-static {p1}, Lorg/chromium/base/task/PostTask;->createSequencedTaskRunner(I)Lorg/chromium/base/task/SequencedTaskRunner;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mTaskQueue:Lorg/chromium/base/task/TaskRunner;

    iput-object p3, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mCreator:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;I)Lorg/chromium/ui/resources/Resource;
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->createResource(I)Lorg/chromium/ui/resources/Resource;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;Lorg/chromium/ui/resources/Resource;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->registerResource(Lorg/chromium/ui/resources/Resource;I)V

    return-void
.end method

.method private createResource(I)Lorg/chromium/ui/resources/Resource;
    .locals 1

    const-string v0, "AsyncPreloadResourceLoader.createResource"

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mCreator:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;

    invoke-interface {p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;->create(I)Lorg/chromium/ui/resources/Resource;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method private registerResource(Lorg/chromium/ui/resources/Resource;I)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lorg/chromium/ui/resources/ResourceLoader;->notifyLoadFinished(ILorg/chromium/ui/resources/Resource;)V

    iget-object p0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method


# virtual methods
.method public loadResource(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/base/task/AsyncTask;->cancel(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/base/task/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/Resource;

    invoke-direct {p0, v0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->registerResource(Lorg/chromium/ui/resources/Resource;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, p1, v1}, Lorg/chromium/ui/resources/ResourceLoader;->notifyLoadFinished(ILorg/chromium/ui/resources/Resource;)V

    goto :goto_0

    :catch_1
    invoke-virtual {p0, p1, v1}, Lorg/chromium/ui/resources/ResourceLoader;->notifyLoadFinished(ILorg/chromium/ui/resources/Resource;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->createResource(I)Lorg/chromium/ui/resources/Resource;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->registerResource(Lorg/chromium/ui/resources/Resource;I)V

    return-void
.end method

.method public preloadResource(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;-><init>(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;I)V

    iget-object v1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mTaskQueue:Lorg/chromium/base/task/TaskRunner;

    invoke-virtual {v0, v1}, Lorg/chromium/base/task/AsyncTask;->executeOnTaskRunner(Lorg/chromium/base/task/TaskRunner;)Lorg/chromium/base/task/AsyncTask;

    iget-object p0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
