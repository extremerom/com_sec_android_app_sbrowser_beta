.class public Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;
.super Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;
.source "SourceFile"


# direct methods
.method public static getAllDefaultBookmarks(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->OPERATOR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v8

    const-string v22, "CREATED"

    const-string v23, "SYNC4"

    const-string v9, "_ID"

    const-string v10, "SURL"

    const-string v11, "TITLE"

    const-string v12, "EDITABLE"

    const-string v13, "bookmark_type"

    const-string v14, "FOLDER"

    const-string v15, "PARENT"

    const-string v16, "POSITION"

    const-string v17, "CHILDREN_COUNT"

    const-string v18, "guid"

    const-string v19, "TOUCH_ICON"

    const-string v20, "FAVICON"

    const-string v21, "DOMINANT_COLOR"

    filled-new-array/range {v9 .. v23}, [Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "PARENT = ? AND DELETED = ? AND bookmark_type = ?"

    const-string v9, "POSITION ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->createBookmarkItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "BookmarkQueryUtil"

    const-string v2, "Error in getAllDefaultBookmarks"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-object v1
.end method

.method public static getBookmarkBarId(Landroid/app/Activity;)J
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getBookmarkBarId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBookmarkBarRoot(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getBookmarkBarFolderString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v5

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-wide/16 v9, 0x0

    const-string v4, ""

    const/4 v7, 0x1

    invoke-static/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->create(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public static getBookmarkItemById(JLandroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p2, v0}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkItem(Ljava/lang/Long;Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public static getBookmarkItems(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "SURL = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v3, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v17, "CREATED"

    const-string v18, "SYNC4"

    const-string v7, "_ID"

    const-string v8, "SURL"

    const-string v9, "TITLE"

    const-string v10, "EDITABLE"

    const-string v11, "bookmark_type"

    const-string v12, "FOLDER"

    const-string v13, "PARENT"

    const-string v14, "POSITION"

    const-string v15, "CHILDREN_COUNT"

    const-string v16, "guid"

    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->createBookmarkItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BookmarkQueryUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "error in getBookmarkItems "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-object v1
.end method

.method public static getBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getBookmarkRoot(Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getBookmarkSearchItems(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Z)Ljava/util/LinkedHashMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;",
            "Z)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    const-string v1, "Error : "

    const-class v2, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;

    monitor-enter v2

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v11, "_ID"

    const-string v12, "SURL"

    const-string v13, "TITLE"

    const-string v14, "TOUCH_ICON"

    const-string v15, "EDITABLE"

    const-string v16, "FOLDER"

    const-string v17, "PARENT"

    const-string v18, "FAVICON"

    const-string v19, "DOMINANT_COLOR"

    const-string v20, "SYNC4"

    filled-new-array/range {v11 .. v20}, [Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;

    invoke-direct {v12}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x1

    xor-int/lit8 v22, v0, 0x1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "DELETED = 0 AND IS_COMMITED = 0 "

    const-string v8, "MODIFIED"

    const/4 v7, 0x0

    move-object v4, v9

    move-object v5, v11

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, p0

    :try_start_2
    invoke-virtual {v12, v4, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->createFolderHierarchy(Landroid/app/Activity;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v5
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    :goto_1
    :try_start_6
    const-string v3, "BookmarkQueryUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :goto_2
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "DELETED = 0 AND IS_COMMITED = 0 "

    const-string v8, "MODIFIED"

    const/4 v7, 0x0

    move-object v4, v9

    move-object v5, v11

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_d

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    if-nez p1, :cond_2

    if-nez p3, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->clear()V

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    goto/16 :goto_c

    :cond_2
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "OTHER_BOOKMARKS"

    const-string v3, "SYNC4"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "_ID"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "FOLDER"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_5

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    const-string v4, "_ID"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    sget-object v16, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const-string v4, "TITLE"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v4, "SURL"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v4, "EDITABLE"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v20, v13

    goto :goto_4

    :cond_4
    move/from16 v20, v3

    :goto_4
    const/16 v19, 0x0

    move-object v14, v0

    move/from16 v21, v22

    invoke-direct/range {v14 .. v21}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_8

    :cond_5
    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    const-string v4, "_ID"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    sget-object v16, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const-string v4, "SYNC4"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->isMobileOrPcBookmarkBarSync4(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f14024d

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_5
    move-object/from16 v17, v4

    goto :goto_6

    :cond_6
    const-string v4, "TITLE"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :goto_6
    const-string v4, "_ID"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v12, v7, v8, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->getFolderPath(JI)Ljava/lang/String;

    move-result-object v19

    const-string v4, "EDITABLE"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v20, v13

    goto :goto_7

    :cond_7
    move/from16 v20, v3

    :goto_7
    const/16 v18, 0x0

    move-object v14, v0

    move/from16 v21, v22

    invoke-direct/range {v14 .. v21}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_8
    if-nez p3, :cond_9

    if-eqz p1, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->add(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    goto :goto_9

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->add(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    :cond_9
    :goto_9
    const-string v3, "FOLDER"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    goto :goto_a

    :cond_a
    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    :goto_a
    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setBookmarkType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v3, v4, :cond_c

    const-string v3, "TOUCH_ICON"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-eqz v3, :cond_b

    array-length v4, v3

    if-lez v4, :cond_b

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setTouchIcon([B)V

    goto :goto_b

    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isTouchIconAvailable()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "DOMINANT_COLOR"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    const-string v3, "DOMINANT_COLOR"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    const-string v3, "DOMINANT_COLOR"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setDominantColor(I)V

    :cond_c
    :goto_b
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getSmartSearchKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_3

    :goto_c
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v3

    :catch_2
    move-exception v0

    goto :goto_e

    :cond_d
    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_f

    :goto_e
    :try_start_b
    const-string v1, "BookmarkQueryUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :goto_f
    monitor-exit v2

    return-object v10

    :goto_10
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0
.end method

.method public static getBookmarkSortTypePosition(Landroid/app/Activity;)I
    .locals 2

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->CUSTOM:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, "bookmark_sort_type_position_secret"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->CUSTOM:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, "bookmark_sort_type_position"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBookmarkURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/app/Activity;Z)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public static getBookmarkURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/app/Activity;Z)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 16

    if-nez p4, :cond_0

    const-string v0, "TITLE = ? AND PARENT = ? AND FOLDER = ? AND DELETED = ? AND IS_COMMITED = ? AND SURL = ?"

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const-string v0, "TITLE = ? AND PARENT = ? AND FOLDER = ? AND DELETED = ? AND IS_COMMITED = ?"

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p4, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v14, "CREATED"

    const-string v15, "SYNC4"

    const-string v5, "_ID"

    const-string v6, "SURL"

    const-string v7, "TITLE"

    const-string v8, "EDITABLE"

    const-string v9, "bookmark_type"

    const-string v10, "FOLDER"

    const-string v11, "PARENT"

    const-string v12, "POSITION"

    const-string v13, "guid"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkItemFromQuery(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v0, "BookmarkQueryUtil"

    const-string v1, "Error in add bookmark getBookmarkItem query."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-object v7
.end method

.method public static getChildrenSize(JLandroid/content/Context;Landroid/net/Uri;)I
    .locals 6

    const-string v3, "PARENT = ? AND DELETED = ? AND IS_COMMITED = ?"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string p0, "_ID"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "POSITION DESC"

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "BookmarkQueryUtil"

    const-string p2, "Error in add bookmark get childern size query."

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return p1
.end method

.method public static getCrossActionBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14025f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v6

    sget-object v9, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-wide/16 v10, 0x0

    const-string v5, ""

    const/4 v8, 0x1

    invoke-static/range {v1 .. v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->create(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultBookmarkId()Ljava/lang/Long;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getLastPosition(Landroid/app/Activity;Landroid/net/Uri;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)I
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2, v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getPosition(Ljava/lang/Long;Ljava/lang/Long;Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method public static getLastSavedParentItem(Landroid/app/Activity;Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 4

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "pref_add_bookmark_folder_secret"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-string v3, "pref_add_bookmark_folder"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkItem(Ljava/lang/Long;Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkItem(Ljava/lang/Long;Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static hasBookmarkBarFolder(Landroid/app/Activity;Landroid/content/ContentResolver;)Z
    .locals 6

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "SYNC4 = ? AND DELETED = ?"

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SBROWSERBOOKMARKBAR"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "BookmarkQueryUtil"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    return p0
.end method

.method public static isBrowserInForeground(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isExistingItem(Ljava/lang/String;Ljava/lang/String;JLandroid/app/Activity;Z)Z
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p1, p2, p4, p5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/app/Activity;Z)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil$1;

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p4, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMobileOrPcBookmarkBarSync4(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isMobileBookmarkBarSync4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->isPCBookmarkBarSync4(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPCBookmarkBarSync4(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PC_BOOKMARK_BAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setBookmarkSortTypePosition(Landroid/app/Activity;I)V
    .locals 1

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "bookmark_sort_type_position_secret"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "bookmark_sort_type_position"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
