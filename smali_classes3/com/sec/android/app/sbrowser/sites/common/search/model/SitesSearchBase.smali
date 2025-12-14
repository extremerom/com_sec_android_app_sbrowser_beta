.class public Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsSmartSearchResultListValid:Z

.field private mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

.field private mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mIsSmartSearchResultListValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->isSmartSearchValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)V
    .locals 13

    const-string v6, "title = ? AND isPrivate = ? AND type = ?"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getIsPrivate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "_id"

    const-string v8, "title"

    const-string v9, "time"

    const-string v10, "isPrivate"

    const-string v11, "type"

    filled-new-array {v0, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/common/search/provider/SitesSearchKeywordProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v3, v6

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SitesSearchBase"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-nez v12, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getIsPrivate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/common/search/provider/SitesSearchKeywordProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/common/search/provider/SitesSearchKeywordProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->clearLists()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->clear()V

    :goto_0
    return-void
.end method

.method public clearLists()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->clearLists()V

    return-void
.end method

.method public deleteAllSearchKeywordList(ZI)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->DEFAULT:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/sec/android/app/sbrowser/sites/common/search/provider/SitesSearchKeywordProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "isPrivate = ?  AND (type = ? OR type = ? )"

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public deleteSearchKeywordItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getIsPrivate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/provider/SitesSearchKeywordProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "title = ? AND isPrivate = ? AND type = ?"

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentTabIndex()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->getCurrentTabIndex()I

    move-result p0

    return p0
.end method

.method public getNonEditableBookmarkFolderCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mIsSmartSearchResultListValid:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getNonEditableBookmarkFolderCount()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->getNonEditableBookmarkFolderCount()I

    move-result p0

    return p0
.end method

.method public getSearchKeywordsList(ZI)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "isPrivate = ?  AND (type = ? OR type = ? )"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->DEFAULT:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p2, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string p1, "_id"

    const-string p2, "title"

    const-string v2, "time"

    const-string v3, "isPrivate"

    const-string v4, "type"

    filled-new-array {p1, p2, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/sites/common/search/provider/SitesSearchKeywordProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "time DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p0, 0x0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;

    const/4 p2, 0x1

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;-><init>(Ljava/lang/String;JII)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p0, p2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    if-lt p0, p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_1
    const-string p1, "SitesSearchBase"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-object v0

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mIsSmartSearchResultListValid:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    return-object p0
.end method

.method public getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    return-object p0
.end method

.method public isSearchDataFetchingStarted()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsIndexing:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isSearchDataFetchingStarted()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->isSearchDataFetchingStarted()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSmartSearchAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->clear()V

    :goto_0
    return-void
.end method

.method public orderData(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->orderData()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->orderData(IZ)V

    :cond_0
    return-void
.end method

.method public processSearchData(Landroid/app/Activity;Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsIndexing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mIsSmartSearchResultListValid:Z

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->processSearchData(Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->processSearchData(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public remove(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->remove(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)I

    move-result p0

    return p0
.end method

.method public removeAll(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->removeAll(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    return-void
.end method

.method public removeInBulk(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->removeInBulk(Ljava/lang/String;)V

    return-void
.end method

.method public setOrder(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->setOrder(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->setOrder(IZ)V

    :cond_1
    return-void
.end method

.method public setSearchDataFetchingStatus(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSmartSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsIndexing:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->setSearchDataFetchingStatus(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->mSitesSearchData:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->setSearchDataFetchingStatus(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method
