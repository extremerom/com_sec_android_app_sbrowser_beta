.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;


# static fields
.field private static final AI_BRIEF_RECENT_HISTORY_DURATION:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAiBriefController:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

.field private mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->AI_BRIEF_RECENT_HISTORY_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->lambda$sortHistoryItem$2(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->lambda$filterLaunchDomain$1(Ljava/lang/String;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->lambda$onHistoryDataReceived$0(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;

    move-result-object p0

    return-object p0
.end method

.method private filterLaunchDomain(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getReadAloudAiBriefLaunchDomain()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[filterLaunchDomain] launchDomain: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloudRecommender"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/D;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private findRecommendItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    sget v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->AI_BRIEF_RECENT_HISTORY_DURATION:I

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->getRecentHistoryByDuration(I)V

    return-void
.end method

.method private getAiBriefController()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mAiBriefController:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mAiBriefController:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mAiBriefController:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    return-object p0
.end method

.method private static isLaunchCardAlive()Z
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getReadAloudAiBriefLaunchTimestamp()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPassIntervalLimit()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isDebugAiBriefIgnoreInterval()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getReadAloudAiBriefTimestamp()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-string p0, "[isPassInterval] elapsedTime: "

    const-string v1, "si__ReadArticlesAloudRecommender"

    invoke-static {v3, v4, p0, v1}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long p0, v3, v1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupported(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadArticlesAloudSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->isReadArticlesAloudAiBriefSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$filterLaunchDomain$1(Ljava/lang/String;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getTopDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onHistoryDataReceived$0(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;->findSiteItemByDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$sortHistoryItem$2(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private sortHistoryItem(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getTopDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/U;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/U;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Map$Entry;->comparingByValue(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/U;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/U;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearHistoryURLsDone()V
    .locals 0

    return-void
.end method

.method public onHistoryCleared()V
    .locals 0

    return-void
.end method

.method public onHistoryCountReceived(I)V
    .locals 0

    return-void
.end method

.method public onHistoryDataReceived(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "si__ReadArticlesAloudRecommender"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->isLaunchCardAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->filterLaunchDomain(Ljava/util/List;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->sortHistoryItem(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/S;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/S;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/T;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "[onHistoryDataReceived] no mostVisitedItem after filtering"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;->getPageTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->sendAiToBriefByRecommend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "onHistoryDataReceived is empty "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHistoryItemDeleted(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onHistoryItemReceived(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    return-void
.end method

.method public onHistoryItemUpdated(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public recommendReadArticlesAloudIfPossible()V
    .locals 3

    const-string v0, "si__ReadArticlesAloudRecommender"

    const-string v1, "[recommendAiBriefIfPossible]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->isPassIntervalLimit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadAloudAiBriefTimestamp(J)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->findRecommendItems()V

    return-void
.end method

.method public sendAiToBriefByLaunch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "[sendAiToBriefByLaunch]"

    const-string v1, "si__ReadArticlesAloudRecommender"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getTopDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "[sendAiToBriefByLaunch] empty domain"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;->findSiteItemByDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "[sendAiToBriefByLaunch] unsupported domain"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[sendAiToBriefByLaunch] unsupported domain: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->getAiBriefController()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, p2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->sendAiToBrief(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadAloudAiBriefLaunchDomain(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadAloudAiBriefLaunchTimestamp(J)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->findRecommendItems()V

    return-void
.end method

.method public sendAiToBriefByRecommend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "si__ReadArticlesAloudRecommender"

    const-string v1, "[sendAiToBriefByRecommend]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->getAiBriefController()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->sendAiToBrief(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
