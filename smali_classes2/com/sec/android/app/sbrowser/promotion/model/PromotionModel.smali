.class public Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;

.field private mHasValidItem:Z

.field private final mItemMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            "Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mHasValidItem:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;

    new-instance p1, Lcom/google/firebase/messaging/z;

    const/16 v1, 0x1b

    invoke-direct {p1, v1, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;->setListener(Lcom/sec/android/app/sbrowser/promotion/model/DataLoaderListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;->update()V

    return-void
.end method

.method private loggingUserAction(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/UserAction;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/Category;->UNKNOWN:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    if-eq p1, v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getDimension()Ljava/util/Map;

    move-result-object p0

    const-string v0, "category"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/model/Category;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "201"

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->getEventId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private loggingUserStatus(Lcom/sec/android/app/sbrowser/promotion/model/Category;Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/promotion/model/Category;->UNKNOWN:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    if-eq p1, p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getDimension()Ljava/util/Map;

    move-result-object p0

    const-string p2, "category"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/model/Category;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "201"

    const-string p2, "5505"

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferredCategoryList()Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->isPreferred()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/promotion/model/Category;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getValidItemList(Lcom/sec/android/app/sbrowser/promotion/model/Category;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/Category;->UNKNOWN:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    if-ne p1, v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->getStatus()Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;->VALID:Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public hasValidItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mHasValidItem:Z

    return p0
.end method

.method public isPrefer(Lcom/sec/android/app/sbrowser/promotion/model/Category;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/Category;->UNKNOWN:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->isPreferred()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public declared-synchronized onItemUpdated(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mHasValidItem:Z

    if-eqz p1, :cond_6

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;->isExpired()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/promotion/model/Category;

    sget-object v2, Lcom/sec/android/app/sbrowser/promotion/model/Category;->UNKNOWN:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "PromotionModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;-><init>(Lcom/sec/android/app/sbrowser/promotion/model/Category;)V

    if-eqz v0, :cond_2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->loggingUserStatus(Lcom/sec/android/app/sbrowser/promotion/model/Category;Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->expire()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;-><init>(Lcom/sec/android/app/sbrowser/promotion/model/Category;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "PromotionModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->getStatus()Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->getStatus()Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;->VALID:Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mHasValidItem:Z

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;->shutdown()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;->setListener(Lcom/sec/android/app/sbrowser/promotion/model/DataLoaderListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mDataLoader:Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->resetHistory()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;->VALID:Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->setStatus(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public updatePromotionResult(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/Category;->UNKNOWN:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    if-ne v1, p3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->reset()V

    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    if-eq v0, p3, :cond_5

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;->CLOSE:Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->setStatus(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public updatePromotionResult(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/UserAction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->loggingUserAction(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/UserAction;)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->getPromotionResult()Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->updatePromotionResult(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;)V

    return-void
.end method

.method public visit(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/promotion/model/Category;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->incWeight()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->mUserStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPromotionToastMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->showToastMessage()V

    goto :goto_0

    :cond_3
    return-void
.end method
