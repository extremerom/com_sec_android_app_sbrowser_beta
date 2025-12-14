.class public Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mChunkInsertFailed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentTabIndex:I

.field private mFailedCountForBookmarks:I

.field private mFailedCountForBookmarksSecret:I

.field private mFailedCountForHistory:I

.field private mFailedCountForSavedPage:I

.field private mFailedCountForSavedPageSecret:I

.field private mIsBookmarksInserted:Z

.field private mIsBookmarksInsertedSecret:Z

.field private mIsHistoryInserted:Z

.field public mIsIndexing:Z

.field private mIsRefreshCalled:Z

.field private mIsSavedPageInserted:Z

.field private mIsSavedPageInsertedSecret:Z

.field private mIsSearchDataFetchingStarted:Z

.field private mNonEditableBookmarkFolder:I

.field protected mPageType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

.field protected mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

.field private mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSitesSearchDataMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSearchDataMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsIndexing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSearchDataFetchingStarted:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mNonEditableBookmarkFolder:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    const-string v1, "sites"

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    return-object p0
.end method

.method private getContentValue(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Landroid/content/ContentValues;
    .locals 2

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getSmartSearchKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "editable"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id_num"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isPrivate()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "private"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/b;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/account/b;-><init>(Landroid/content/Context;I)V

    const-class p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    return-object p0
.end method

.method private incrementFailedCount(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForSavedPageSecret:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForSavedPageSecret:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForSavedPage:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForSavedPage:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForHistory:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForHistory:I

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForBookmarksSecret:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForBookmarksSecret:I

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForBookmarks:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForBookmarks:I

    :goto_0
    return-void
.end method

.method private isInsertFailed(IZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForSavedPageSecret:I

    if-ge p1, v2, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForSavedPage:I

    if-lt p0, v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForHistory:I

    if-lt p0, v2, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    if-eqz p2, :cond_7

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForBookmarksSecret:I

    if-ge p1, v2, :cond_8

    :cond_7
    if-nez p2, :cond_9

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mFailedCountForBookmarks:I

    if-lt p0, v2, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    return v0
.end method

.method private static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private putContentValuesInList(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSearchDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getSmartSearchKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getContentValue(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData$1;->$SwitchMap$com$sec$android$app$sbrowser$common$model$sites$SitesSearchItem$TYPE:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "SitesSmartSearchData"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public addDataInSitesSearchMap(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSearchDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public chunkInsert(Ljava/util/ArrayList;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isInsertFailed(IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mChunkInsertFailed:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x64

    if-le v0, v4, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->insert(Ljava/util/List;)I

    move-result v3

    const/16 v5, 0x64

    if-ge v3, v5, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mChunkInsertFailed:Z

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->incrementFailedCount(IZ)V

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mChunkInsertFailed:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->insert(Ljava/util/List;)I

    move-result v4

    sub-int/2addr v0, v3

    if-ge v4, v0, :cond_4

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mChunkInsertFailed:Z

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->incrementFailedCount(IZ)V

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mChunkInsertFailed:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mChunkInsertFailed:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->chunkInsert(Ljava/util/ArrayList;IZ)V

    :cond_5
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mChunkInsertFailed:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsRefreshCalled:Z

    if-nez p1, :cond_6

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsRefreshCalled:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->REFRESH:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsIndexing:Z

    :cond_6
    return-void
.end method

.method public clearLists()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public deleteAllSearchKeywordList(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->DEFAULT:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p1, v2}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/common/search/provider/SitesSearchKeywordProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "isPrivate = ?  AND (type = ? OR type = ? )"

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deleteSearchKeywordListOnResetSecretMode()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->deleteAllSearchKeywordList(I)Z

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->deleteAllSearchKeywordList(I)Z

    return-void
.end method

.method public getIsHistoryInserted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsHistoryInserted:Z

    return p0
.end method

.method public getNonEditableBookmarkFolderCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mNonEditableBookmarkFolder:I

    return p0
.end method

.method public getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getSitesSearchDataMap()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSearchDataMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public insert(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSearchDataMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getSmartSearchKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getContentValue(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Landroid/content/ContentValues;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->insert(Landroid/content/ContentValues;)V

    return-void
.end method

.method public insertInDataMap(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSearchDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getSmartSearchKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public isBookmarksInsertedNormal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInserted:Z

    return p0
.end method

.method public isBookmarksInsertedSecret()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInsertedSecret:Z

    return p0
.end method

.method public isSavedPageInsertedNormal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInserted:Z

    return p0
.end method

.method public isSavedPageInsertedSecret()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInsertedSecret:Z

    return p0
.end method

.method public isSearchDataFetchingStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSearchDataFetchingStarted:Z

    return p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public orderData(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInserted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsHistoryInserted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInserted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInsertedSecret:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInsertedSecret:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->refresh()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInserted:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInsertedSecret:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->putContentValuesInList(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInsertedSecret:Z

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInserted:Z

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsHistoryInserted:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->putContentValuesInList(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/ArrayList;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsHistoryInserted:Z

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInserted:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInsertedSecret:Z

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    return-void

    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->putContentValuesInList(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_a

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInsertedSecret:Z

    goto :goto_2

    :cond_a
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInserted:Z

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->chunkInsert(Ljava/util/ArrayList;IZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->SYNCED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "chunkInsert completed size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SitesSmartSearchData"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    return-void
.end method

.method public processSearchData(Landroid/app/Activity;Ljava/lang/String;Z)Z
    .locals 15

    move-object v0, p0

    const-string v1, "SitesSmartSearchData"

    const-string v2, "processSearchData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%"

    const-string v4, "\\%"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "path"

    const-string v5, "editable"

    const-string v6, "id"

    const-string v7, "title"

    const-string v8, "url"

    filled-new-array {v6, v7, v8, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mPageType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne v5, v6, :cond_2

    const-string v5, " asc"

    goto :goto_0

    :cond_2
    const-string v5, " desc"

    :goto_0
    const-string v6, "id_num"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mPageType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v1, v7, v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v5, v4, v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->searchResult(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iput v2, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mNonEditableBookmarkFolder:I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v13, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mPageType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v14, 0x1

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object v5, v13

    move/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSearchDataMap:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    move-object/from16 v5, p1

    if-eqz v4, :cond_4

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mNonEditableBookmarkFolder:I

    add-int/2addr v7, v14

    iput v7, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mNonEditableBookmarkFolder:I

    :cond_5
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq v7, v8, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v4

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v4

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->getSBrowserMainActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkItem(Ljava/lang/Long;Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTouchiconData()[B

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setTouchIcon([B)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTouchicon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v7

    invoke-virtual {v13, v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setDominantColor(I)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setBookmarkType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    goto/16 :goto_1

    :cond_7
    :goto_2
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTouchIconData()[B

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setTouchIcon([B)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDominantColor()I

    move-result v7

    invoke-virtual {v13, v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setDominantColor(I)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setBookmarkType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getContentUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setContentUri(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->setSearchDataFetchingStatus(Ljava/lang/Boolean;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isFallBackQuery()Z

    move-result v0

    return v0

    :cond_9
    :goto_3
    return v2
.end method

.method public remove(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSearchDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    const-string p2, "_id"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->delete(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeAll(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    if-eqz p0, :cond_0

    const-string v0, "page"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->delete(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public removeFromDataMap(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSitesSearchDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeInBulk(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    const-string v0, "_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->bulkDelete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeSecretDataFromSmartSearch()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "private"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->delete(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->deleteSearchKeywordListOnResetSecretMode()V

    return-void
.end method

.method public setBookmarksInsertedNormal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInserted:Z

    return-void
.end method

.method public setBookmarksInsertedSecret(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsBookmarksInsertedSecret:Z

    return-void
.end method

.method public setHistoryPageInserted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsHistoryInserted:Z

    return-void
.end method

.method public setOrder(IZ)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mCurrentTabIndex:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mPageType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->INVALID:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mPageType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mCurrentTabIndex:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p2, :cond_2

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mPageType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mPageType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mPageType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    :goto_0
    return-void
.end method

.method public setSavedPageInsertedNormal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInserted:Z

    return-void
.end method

.method public setSavedPageInsertedSecret(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSavedPageInsertedSecret:Z

    return-void
.end method

.method public setSearchDataFetchingStatus(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsSearchDataFetchingStarted:Z

    return-void
.end method

.method public update(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getContentValue(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getSmartSearchKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->update(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public updateField(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p0, p2, p1, v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->update(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method
