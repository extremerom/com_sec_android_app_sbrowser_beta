.class Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource$Observer;
    }
.end annotation


# instance fields
.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mTerraceMostVisitedModel:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mObservers:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->notifyMostVisitedCompleted(Z)V

    return-void
.end method

.method private convertList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;-><init>()V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainNameFirstLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setTitle(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->getScore()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setScore(F)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private notifyMostVisitedCompleted(Z)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mTerraceMostVisitedModel:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->getMostVisitedList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->convertList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource$Observer;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource$Observer;->onDataChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource$Observer;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToBlockList(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mTerraceMostVisitedModel:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->isBlockedUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mTerraceMostVisitedModel:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->addToBlockedUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mTerraceMostVisitedModel:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;-><init>(Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedModelListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mTerraceMostVisitedModel:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->queryMostVisitedItems()V

    return-void
.end method

.method public removeFromBlockList(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mTerraceMostVisitedModel:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->isBlockedUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->mTerraceMostVisitedModel:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->removeFromBlockedUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
