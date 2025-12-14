.class Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/promotion/context_analyzer/IContextAnalyzer;


# static fields
.field private static final PREDEFINED_AMP_PATH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/SiteLoader;

.field private final mDomainMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOptimizer:Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "i"

    const-string v1, "amp"

    const-string v2, "s"

    const-string v3, "c"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->PREDEFINED_AMP_PATH:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mOptimizer:Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDomainMap:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/SiteLoader;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/SiteLoader;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/SiteLoader;

    new-instance p1, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/a;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/a;-><init>(Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;->setListener(Lcom/sec/android/app/sbrowser/promotion/model/DataLoaderListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/SiteLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/SiteLoader;->update()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDomainUpdated(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDomainMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDomainMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/SiteLoader;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;->shutdown()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/SiteLoader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;->setListener(Lcom/sec/android/app/sbrowser/promotion/model/DataLoaderListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/SiteLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public request(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mOptimizer:Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;->run()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDomainMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    return-object v1

    :cond_2
    const-string v2, "google.com/amp/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v0

    :cond_5
    sget-object v3, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->PREDEFINED_AMP_PATH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->mDomainMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    :cond_7
    if-eqz v1, :cond_8

    move-object v0, v1

    :cond_8
    :goto_1
    return-object v0
.end method
