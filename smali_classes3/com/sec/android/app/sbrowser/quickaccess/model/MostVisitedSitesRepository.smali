.class public Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIconFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

.field private final mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

.field private final mSharedPreferenceDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;

.field private final mTerraceDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mTerraceDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/d;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->addObserver(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource$Observer;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mSharedPreferenceDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mIconFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/b;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->setListener(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->onIconFetchFinished(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private addToBlockList(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mTerraceDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->addToBlockList(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->addToBlockList(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->create()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;-><init>()V

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;)V

    return-object v1
.end method

.method private filterOutRefererUrl(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/RefererDomainUtils;->startsWithRefererUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p0, v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    return-object v0
.end method

.method private initItems()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mTerraceDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->init()V

    return-void
.end method

.method private onIconFetchFinished(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    int-to-long v4, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->updateIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addToBlockList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->addToBlockList(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mSharedPreferenceDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;->isEnabled()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public onNativeInitialization()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->initItems()V

    return-void
.end method

.method public onTerraceDataChanged(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->filterOutRefererUrl(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->getListToInsert(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->updateItems(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mIconFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestFetchIcon(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeFromBlockList(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->mTerraceDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->removeFromBlockList(Ljava/lang/String;)V

    return-void
.end method
