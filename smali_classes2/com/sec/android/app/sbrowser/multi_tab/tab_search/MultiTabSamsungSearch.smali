.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    const-string v1, "multi_tab"

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    return-void
.end method

.method private clearDataFromSearchClient()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    const-string v0, "tabData"

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->delete(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private generateGroupDataToInsert(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "tabidx"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "tabData"

    invoke-virtual {p0, p2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "tabid"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "title"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private generateTabDataToInsert(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)Landroid/content/ContentValues;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "tabidx"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "tabData"

    invoke-virtual {v0, p2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "tabid"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "title"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->getTitle(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "url"

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTitle(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->getTabTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private insertTabDataToSearchClient(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->insert(Ljava/util/List;)I

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    const-string v0, "MultiTabSamsungSearch"

    const-string v1, "[init]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->refresh()V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public searchTabs(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "tabid"

    const-string v2, "title"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tabidx_sort desc"

    invoke-virtual {p0, p1, v2, v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->searchResult(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public updateTabsToSearchClient(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "[updateSearchData]"

    const-string v1, "MultiTabSamsungSearch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->clearDataFromSearchClient()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "[updateSearchData] Tab list size is 0"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->generateGroupDataToInsert(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->generateTabDataToInsert(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->insertTabDataToSearchClient(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_1
    return-void
.end method
