.class public Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPushTopicClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

.field private mPushTopics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->mPushTopicClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->loadPushTopics()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->lambda$updateSubsTopicState$1(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->lambda$getIndexedPushTopics$0(Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getRecommendTopicIdIfSubsNeeded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->loadPushTopics()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->setPushTopicSubsPref(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->setPushTopics(Ljava/util/Set;)V

    return-void
.end method

.method private getRecommendTopicIdIfSubsNeeded()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getPushTopics()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->isPushTopicSubsPref(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->isRecommend()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    return-object v2
.end method

.method private static synthetic lambda$getIndexedPushTopics$0(Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;)I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getIndex()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getIndex()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateSubsTopicState$1(Ljava/util/Map;)V
    .locals 4

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setSyncedPushTopicSubs(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Topic subscription : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PushTopicRepository"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loadPushTopics()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->mPushTopics:Ljava/util/Set;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushTopics()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    if-eq v5, v6, :cond_0

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->mPushTopics:Ljava/util/Set;

    new-instance v6, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    invoke-direct {v6, v3, v4, v5, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    const-string v2, "Unexpected push topic. Can\'t split push topic string: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PushTopicRepository"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setPushTopicSubsPref(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setPushTopicSubs(Ljava/lang/String;Z)V

    return-void
.end method

.method private setPushTopics(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->isRecommend()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setPushTopics(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->mPushTopics:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getIndexedPushTopics()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getPushTopics()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    new-instance v0, LB0/r;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LB0/r;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPushTopics()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->mPushTopics:Ljava/util/Set;

    return-object p0
.end method

.method public getTopicsState()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getPushTopics()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->isPushTopicSubs(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isPushTopicSubsPref(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->isPushTopicSubs(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setRestoreFallback(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->mPushTopicClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;->setRestoreFallback(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;)V

    return-void
.end method

.method public syncPushTopics(Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->mPushTopicClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;->fetchPushTopics(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;)V

    return-void
.end method

.method public syncPushTopicsWithCoolTime(J)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getLastSyncTopicsTimeHours()J

    move-result-wide v0

    add-long/2addr v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getRecommendTopicIdIfSubsNeeded()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->setPushTopicSubsPref(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->updateSubsTopicState()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "PushTopicRepository"

    const-string p2, "Sync push topic cool time end. Sync push topics"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->syncPushTopics(Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    return-void
.end method

.method public updateSubsTopicState()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getTopicsState()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->mPushTopicClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

    new-instance v1, Lcom/google/firebase/messaging/z;

    const/16 v2, 0x12

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;->updateSubsTopicState(Ljava/util/Map;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;)V

    return-void
.end method

.method public updateSubsTopicStateIfNotSynced()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getPushTopics()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->isSyncedPushTopicSubs(Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->isPushTopicSubs(Ljava/lang/String;)Z

    move-result v2

    if-eq v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    :cond_2
    if-nez v2, :cond_3

    return-void

    :cond_3
    const-string v0, "PushTopicRepository"

    const-string v1, "Need to update subscription topic state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->updateSubsTopicState()V

    return-void
.end method
