.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\\\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062.\u0010\u000e\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\nj\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b`\rH\u0082@\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\\\u0010\u0012\u001a\u00020\u000f2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062.\u0010\u000e\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\nj\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b`\rH\u0082@\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J,\u0010\u0013\u001a\u00020\u000f2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0082@\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000bH\u0086@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000bH\u0086@\u00a2\u0006\u0004\u0008\u0018\u0010\u0016JN\u0010\u0019\u001a\u00020\u000f2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062.\u0010\u000e\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\nj\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b`\rH\u0086@\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "prevDescriptors",
        "latestDescriptors",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lkotlin/collections/HashMap;",
        "newDescriptorHashMap",
        "Ldb/r;",
        "updateDescriptors",
        "(Ljava/util/Set;Ljava/util/Set;Ljava/util/HashMap;Lib/c;)Ljava/lang/Object;",
        "insertNewDescriptors",
        "deleteUnusedDescriptors",
        "(Ljava/util/Set;Ljava/util/Set;Lib/c;)Ljava/lang/Object;",
        "getThreatDescriptors",
        "(Lib/c;)Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;",
        "getThreatDescriptorWithHashes",
        "update",
        "(Ljava/util/Set;Ljava/util/HashMap;Lib/c;)Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;",
        "saferBrowsingDatabaseDao",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final saferBrowsingDatabaseDao:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase;->saferBrowsingDatabaseDao()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->saferBrowsingDatabaseDao:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    return-void
.end method

.method private final deleteUnusedDescriptors(Ljava/util/Set;Ljava/util/Set;Lib/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p1, p2}, Lfb/F;->c(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    sget-object v0, Ldb/r;->a:Ldb/r;

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->saferBrowsingDatabaseDao:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;->deleteThreatDescriptorEntityByIdIn(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method private final insertNewDescriptors(Ljava/util/Set;Ljava/util/Set;Ljava/util/HashMap;Lib/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p1, p2}, Lfb/F;->c(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    sget-object v0, Ldb/r;->a:Ldb/r;

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->saferBrowsingDatabaseDao:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p0, p2, p4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;->insertThreatDescriptorsWithHashes(Ljava/util/Map;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    return-object v0
.end method

.method private final updateDescriptors(Ljava/util/Set;Ljava/util/Set;Ljava/util/HashMap;Lib/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfb/n;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p2, Ljava/util/Collection;

    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    check-cast p2, Ljava/util/Collection;

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :goto_1
    invoke-interface {p1, p2}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    sget-object v0, Ldb/r;->a:Ldb/r;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->saferBrowsingDatabaseDao:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    invoke-interface {p0, p2, p4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;->updateThreatDescriptorHashes(Ljava/util/Map;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final getThreatDescriptorWithHashes(Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->saferBrowsingDatabaseDao:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;->getThreatDescriptorsWithHashes(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getThreatDescriptors(Lib/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$getThreatDescriptors$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$getThreatDescriptors$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$getThreatDescriptors$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$getThreatDescriptors$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$getThreatDescriptors$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$getThreatDescriptors$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lib/c;)V

    :goto_0
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$getThreatDescriptors$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$getThreatDescriptors$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->saferBrowsingDatabaseDao:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    iput v3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$getThreatDescriptors$1;->label:I

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;->getThreatDescriptors(Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorKt;->toDomain(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final update(Ljava/util/Set;Ljava/util/HashMap;Lib/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p3, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;

    invoke-direct {v0, p0, p3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lib/c;)V

    :goto_0
    iget-object p3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    iget-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/HashMap;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :cond_4
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    const-string v2, "<get-keys>(...)"

    invoke-static {p3, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p3

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$3:Ljava/lang/Object;

    iput v5, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->label:I

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->updateDescriptors(Ljava/util/Set;Ljava/util/Set;Ljava/util/HashMap;Lib/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->label:I

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->deleteUnusedDescriptors(Ljava/util/Set;Ljava/util/Set;Lib/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    move-object p0, p3

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_2
    const/4 p3, 0x0

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel$update$1;->label:I

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->insertNewDescriptors(Ljava/util/Set;Ljava/util/Set;Ljava/util/HashMap;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
