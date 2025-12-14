.class public Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mGroupedHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsSamsungSearchAvailable:Z

.field protected mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

.field private mSearchDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSettingResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingPrefMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mGroupedHashMap:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "settings"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->refresh()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchDataList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingResultList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mIsSamsungSearchAvailable:Z

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->lambda$getInstance$0()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    return-object v0
.end method

.method private groupDataIntoHashMap(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMParentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "dummy"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method private static synthetic lambda$getInstance$0()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clearResultList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingResultList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mGroupedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public getGroupedHashMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mGroupedHashMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public getResultList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/SearchItemType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mGroupedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingResultList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->groupDataIntoHashMap(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mGroupedHashMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mGroupedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

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

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "dummy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeader;

    const-string v2, ""

    invoke-direct {v1, v3, v2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMParentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public isFallBackQuery()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isFallBackQuery()Z

    move-result p0

    return p0
.end method

.method public processSearchData(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->clearResultList()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mIsSamsungSearchAvailable:Z

    const-string v1, "\\%"

    const-string v2, "%"

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    if-nez v0, :cond_1

    return v3

    :cond_1
    const-string v1, "preference_key"

    const-string v2, "title"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "id_sort desc"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->searchResult(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingPrefMap:Ljava/util/HashMap;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingPrefMap:Ljava/util/HashMap;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingPrefMap:Ljava/util/HashMap;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingResultList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?i)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "\\E\\s?\\Q"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingResultList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public setSearchData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public smartSearchChunkInsert(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mIsSamsungSearchAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->refresh()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingPrefMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "title"

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "title_eng"

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefTitleEng()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "preference_key"

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->insert(Ljava/util/List;)I

    return-void
.end method
