.class public Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field public mCurrentTabIndex:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mIsNonEditableBookmarksInSearchResult:Z

.field private mIsSearchDataFetchingStarted:Z

.field private mNonEditableBookmarkFolder:I

.field protected mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSitesSearchDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSearchDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mIsNonEditableBookmarksInSearchResult:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mIsSearchDataFetchingStarted:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mNonEditableBookmarkFolder:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData$1;->$SwitchMap$com$sec$android$app$sbrowser$common$model$sites$SitesSearchItem$TYPE:[I

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "SitesSearchData"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public clear()V
    .locals 2

    const-string v0, "SitesSearchData"

    const-string v1, "clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSearchDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mIsNonEditableBookmarksInSearchResult:Z

    return-void
.end method

.method public getCurrentTabIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mCurrentTabIndex:I

    return p0
.end method

.method public getNonEditableBookmarkFolderCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mNonEditableBookmarkFolder:I

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public isSearchDataFetchingStarted()Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mIsSearchDataFetchingStarted:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public orderData()V
    .locals 5

    const-string v0, "orderData()"

    const-string v1, "SitesSearchData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mCurrentTabIndex:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderData() for SavedPages  | Item Count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->isSecretModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderData() for SavedPages | Item Count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSavedPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderData() for History  | Item Count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesHistoryList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderData() for Bookmarks | Item Count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesBookmarkList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSearchDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public processSearchData(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 7

    const-string p1, "SitesSearchData"

    const-string v0, "processSearchData"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "%"

    const-string v1, "\\%"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?i)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "\\E\\s?\\Q"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v2

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mNonEditableBookmarkFolder:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSearchDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->INVALID:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_5
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne v5, v6, :cond_7

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mIsNonEditableBookmarksInSearchResult:Z

    const/4 v6, 0x1

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result v5

    if-nez v5, :cond_6

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mIsNonEditableBookmarksInSearchResult:Z

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mNonEditableBookmarkFolder:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mNonEditableBookmarkFolder:I

    :cond_7
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->setSearchDataFetchingStatus(Ljava/lang/Boolean;)V

    return v0
.end method

.method public remove(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSearchDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mSitesSearchDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOrder(I)V
    .locals 2

    const-string v0, "setOrder : "

    const-string v1, "SitesSearchData"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mCurrentTabIndex:I

    return-void
.end method

.method public setSearchDataFetchingStatus(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->mIsSearchDataFetchingStarted:Z

    return-void
.end method
