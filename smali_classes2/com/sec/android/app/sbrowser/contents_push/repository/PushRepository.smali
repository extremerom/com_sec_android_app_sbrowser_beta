.class public Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mHistoryDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;

.field private final mPushTopicManagerV1:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;

.field private final mSyncStatus:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mTopicDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

.field private final mTopics:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mTopicsState:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mUserDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mSyncStatus:Landroidx/lifecycle/X;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mUserDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/messaging/z;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->setRestoreFallback(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mHistoryDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mPushTopicManagerV1:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getIndexedPushTopics()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopics:Landroidx/lifecycle/X;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getTopicsState()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicsState:Landroidx/lifecycle/X;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)Landroidx/lifecycle/X;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mSyncStatus:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)Landroidx/lifecycle/X;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopics:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->updateTopicsStateLiveData()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    return-object v0
.end method

.method private updateTopicsStateLiveData()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicsState:Landroidx/lifecycle/X;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getTopicsState()Ljava/util/Map;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicsState:Landroidx/lifecycle/X;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicsState:Landroidx/lifecycle/X;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addHistory(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mHistoryDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->addPush(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public clearHistory()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mHistoryDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->clear()V

    return-void
.end method

.method public deregister(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mUserDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->deregister(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;)V

    return-void
.end method

.method public getHistories(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mHistoryDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->getPushHistories(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPushReceivedTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mHistoryDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->getReceivedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSyncStatusLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mSyncStatus:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getTopicsLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopics:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getTopicsStateLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicsState:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public register(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mSyncStatus:Landroidx/lifecycle/X;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->IN_PROGRESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mUserDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$2;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$2;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->register(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mPushTopicManagerV1:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;->unsubscribeV1TopicsIfNeeded()V

    return-void
.end method

.method public setPushOpened(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mHistoryDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->setPushOpened(Ljava/lang/String;)V

    return-void
.end method

.method public syncPushTopics()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->syncPushTopics(Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    return-void
.end method

.method public syncPushTopicsWithCoolTime(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->syncPushTopicsWithCoolTime(J)V

    return-void
.end method

.method public updateDeviceInfoIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mUserDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->updateDeviceInfoIfNeeded()V

    return-void
.end method

.method public updateSubsTopicState()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->updateSubsTopicState()V

    return-void
.end method

.method public updateSubsTopicState(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setPushTopicSubs(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->updateSubsTopicState()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->updateTopicsStateLiveData()V

    return-void
.end method

.method public updateSubsTopicStateIfNotSynced()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->mTopicDataSource:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->updateSubsTopicStateIfNotSynced()V

    return-void
.end method
